import 'package:flutter/material.dart';
import 'package:sart_up_project/constants.dart';

import '../../../../core/utils/Assets.dart';
import '../../../../core/utils/size_config.dart';
import '../../../../core/widgets/space_box.dart';
import '../../../../styles.dart';
import '../../../splash_view/presentaion/widgets/custom_top_curves.dart';
import 'custom_app_bar.dart';
import '../../../../core/widgets/custom_search_text_field.dart';

class HomeViewHeader extends StatelessWidget {
  const HomeViewHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.screenHeight * .3,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned.fill(
              child: Container(
            decoration: const BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(16),
              ),
            ),
          )),
          Positioned(
            left: 0,
            right: 0,
            child: CustomPaint(
              size: Size(SizeConfig.screenWidth, SizeConfig.defaultSize * 20),
              painter: RightCurvePainter(),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            child: CustomPaint(
              size: Size(SizeConfig.screenWidth, SizeConfig.defaultSize * 17),
              painter: LeftCurvePainter(),
            ),
          ),
          Positioned(
            right: SizeConfig.defaultSize * 3,
            bottom: SizeConfig.defaultSize * 5.3 / 2 + 6,
            child: Image.asset(
              Assets.medicine,
              height: SizeConfig.defaultSize * 16,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(),
                SpaceBox(
                  height: 1.5,
                ),
                Text(
                  'Hello',
                  style: Styles.bodyText3,
                  textAlign: TextAlign.left,
                ),
                Text(
                  'Hadeer!',
                  style: Styles.bodyText4,
                  textAlign: TextAlign.left,
                ),
                SpaceBox(
                  height: .95,
                ),
                Text(
                  'Have a good day',
                  textAlign: TextAlign.left,
                  style: Styles.bodyText1,
                ),
              ],
            ),
          ),
          Positioned(
            // this value is the same as the content padding of the text field
            bottom: -(SizeConfig.defaultSize * 5.3 / 2) - 5,
            left: 16,
            right: 16,
            child: CustomSearchTextField(
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
