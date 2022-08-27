import 'package:flutter/material.dart';
import 'package:sart_up_project/Features/google_map/presentation/widgets/service_item.dart';
import 'package:sart_up_project/core/utils/size_config.dart';

import '../../../../constants.dart';
import '../../../../core/widgets/custom_general_button.dart';
import '../../../../core/widgets/space_box.dart';

class ServiceCard extends StatelessWidget {
  const ServiceCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color(0xffd7dbe2).withOpacity(.6),
              blurRadius: 30,
              spreadRadius: 4,
            ),
          ],
          color: Colors.white.withOpacity(.3),
          borderRadius: BorderRadius.circular(12),
        ),
        padding: EdgeInsets.all(16),
        child: SizedBox(
          width: SizeConfig.screenWidth,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ServiceItem(),
              SpaceBox(
                height: 1,
              ),
              Row(
                children: [
                  Flexible(
                    child: CustomButton(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: kSecondaryColor,
                          ),
                          color: Colors.white),
                      text: 'Compare',
                      textColor: kSecondaryColor,
                      backGroundColor: kPrimaryColor,
                      gradient: kLinearGradient,
                    ),
                  ),
                  SpaceBox(
                    width: 2,
                  ),
                  Flexible(
                    child: CustomButton(
                      text: 'Choose',
                      backGroundColor: kPrimaryColor,
                      gradient: kLinearGradient,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
