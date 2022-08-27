import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sart_up_project/constants.dart';

import '../../../../core/utils/size_config.dart';
import '../../../../core/widgets/custom_tap.dart';
import '../../../../core/widgets/space_box.dart';
import '../../../../styles.dart';

class CustomGoogleMapTap extends StatelessWidget {
  CustomGoogleMapTap({
    Key? key,
    required this.isSelected,
    this.icon,
    required this.text,
    this.padding,
  }) : super(key: key);

  final double? padding;
  final bool isSelected;
  final IconData? icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(padding ?? 8.0),
      child: GeneralTap(
        borderRadius: 24,
        inActiveColor: Colors.white,
        text: text,
        isSelected: isSelected,
        activeColor: kSecondaryColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: icon != null
              ? Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      icon,
                      size: 12,
                      color: isSelected ? Colors.white : Colors.black,
                    ),
                    const SpaceBox(
                      width: 1.2,
                    ),
                    Flexible(
                      child: Text(
                        text,
                        style: isSelected
                            ? Styles.TapText
                            : Styles.TapText.copyWith(
                                color: Colors.black,
                              ),
                        textAlign: TextAlign.right,
                      ),
                    )
                  ],
                )
              : Center(
                  child: Text(
                    text,
                    style: isSelected
                        ? Styles.TapText
                        : Styles.TapText.copyWith(
                            color: Colors.black,
                          ),
                    textAlign: TextAlign.right,
                  ),
                ),
        ),
      ),
    );
  }
}
