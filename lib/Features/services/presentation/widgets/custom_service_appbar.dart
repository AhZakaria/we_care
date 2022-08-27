import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sart_up_project/Features/services/presentation/widgets/app_bar_right_curve_painater.dart';

import '../../../../core/utils/size_config.dart';
import '../../../../styles.dart';
import '../../../splash_view/presentaion/widgets/custom_top_curves.dart';

class CustomServicesAppBar extends StatelessWidget {
  const CustomServicesAppBar({Key? key}) : super(key: key);

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
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
              Spacer(),
              Text(
                Get.arguments ?? 'Lap List',
                style: Styles.bodyText3.copyWith(
                  fontWeight: FontWeight.w700,
                ),
              ),
              Spacer(),

              // im using it to help center the title
              Icon(
                Icons.arrow_back_ios,
                color: Colors.transparent,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
