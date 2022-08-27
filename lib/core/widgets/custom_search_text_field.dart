import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sart_up_project/constants.dart';
import 'package:sart_up_project/core/utils/size_config.dart';

import '../../styles.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({
    Key? key,
    this.onTap,
    this.hint,
    this.onChange,
    this.verticalPadding,
    this.suffixIcon,
  }) : super(key: key);

  final VoidCallback? onTap;

  final String? hint;
  final void Function(String?)? onChange;
  final double? verticalPadding;

  final IconData? suffixIcon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: onTap,
      onSaved: onChange,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(
          vertical: (verticalPadding ?? SizeConfig.defaultSize * 5.3) / 2 - 5,
          horizontal: 16,
        ),
        filled: true,
        fillColor: Colors.white,
        suffixIcon: CustomContainerIcon(
          icon: suffixIcon,
          size: verticalPadding,
        ),
        hintText: 'search for nearest medical service ',
        hintStyle:
            Styles.bodyText1.copyWith(color: Colors.grey.withOpacity(.7)),
        prefixIcon: Icon(
          Icons.search,
          color: Color(0xff2E2E2E),
        ),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: Color(0xFFD6D6D6),
            )),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            color: Color(0xFFD6D6D6),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            color: Color(0xFFD6D6D6),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(
            color: Color(0xFFD6D6D6),
          ),
        ),
      ),
    );
  }
}

class CustomContainerIcon extends StatelessWidget {
  const CustomContainerIcon({
    Key? key,
    this.size,
    this.icon,  this.iconColor,  this.backgrounColor,
  }) : super(key: key);

  final double? size;
  final IconData? icon;
  final Color? iconColor;
  final Color? backgrounColor;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Container(
        height: size ?? SizeConfig.defaultSize * 5.3,
        width: size ?? SizeConfig.defaultSize * 5.3,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color:backgrounColor ??  kPrimaryColor,
        ),
        child: Center(
          child: Icon(
            icon ?? Icons.near_me,
            size: 32,
            
            color: iconColor ??  Colors.white,
          ),
        ),
      ),
    );
  }
}
