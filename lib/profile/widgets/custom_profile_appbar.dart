import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sart_up_project/Features/services/presentation/widgets/app_bar_right_curve_painater.dart';
import 'package:sart_up_project/core/widgets/custom_text_field.dart';

import '../../../../core/utils/size_config.dart';
import '../../../../styles.dart';

class CustomProfileAppBar extends StatelessWidget {
  const CustomProfileAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
        clipBehavior: Clip.none,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.close,
                  color: Colors.white,
                ),
                Spacer(),
                Text(
                  Get.arguments ?? 'Change Password',
                  style: Styles.bodyText3.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.done,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ],
    );
  }
}
