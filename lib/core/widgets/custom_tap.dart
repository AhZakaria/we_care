import 'package:flutter/material.dart';
import 'package:sart_up_project/styles.dart';

import '../../constants.dart';
import '../utils/size_config.dart';

class GeneralTap extends StatelessWidget {
  final String text;
  final int flex;
  final bool isSelected;
  final double? width;  
  final double? height;
  final Widget? child;
  final double? borderRadius;
  final Color? activeColor;
  final Color? inActiveColor;
  VoidCallback? onTap;
  GeneralTap(
      {required this.text,
      this.flex = 1,
      this.width,
      required this.isSelected,
      this.onTap,
      this.height,
      this.child,
      this.borderRadius,
      this.activeColor,
      this.inActiveColor});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height ?? SizeConfig.defaultSize * 20,
        width: width,
        decoration: BoxDecoration(
          color: isSelected
              ? activeColor ?? kPrimaryColor
              : inActiveColor ?? Colors.white,
          borderRadius: BorderRadius.circular(borderRadius ?? 8),
          border: Border.all(
            color: isSelected
                ? activeColor ?? kPrimaryColor
                : inActiveColor ?? const Color(0xFFE0E0E0),
          ),
        ),
        child: child ??
            Center(
              child: FittedBox(
                child: Text(
                  text,
                  style: isSelected
                      ? Styles.TapText
                      : Styles.TapText.copyWith(
                          color: Colors.black,
                        ),
                  textHeightBehavior:
                      const TextHeightBehavior(applyHeightToFirstAscent: false),
                  textAlign: TextAlign.right,
                ),
              ),
            ),
      ),
    );
  }
}
