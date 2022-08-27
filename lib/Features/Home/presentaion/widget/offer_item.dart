import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../../../../core/utils/Assets.dart';
import '../../../../core/utils/size_config.dart';
import '../../../../core/widgets/space_box.dart';
import '../../../../styles.dart';

class OfferItem extends StatelessWidget {
  const OfferItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 8,
        right: 8,
        top: 8,
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: SizeConfig.defaultSize * 35,
            decoration: BoxDecoration(
              gradient: kLinearGradient,
              color: kPrimaryColor,
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          Positioned(
            top: -SizeConfig.defaultSize * 3,
            bottom: 2,
            left: 8,
            child: Image.asset(
              Assets.offer,
            ),
          ),
          Positioned(
            right: SizeConfig.defaultSize * .5,
            top: 16,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Get',
                      style: Styles.bodyText3,
                      textAlign: TextAlign.left,
                    ),
                    SpaceBox(
                      width: .5,
                    ),
                    Text(
                      '80% Off  ',
                      style: Styles.bodyText4,
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
                Text(
                  'check update',
                  style: Styles.bodyText2,
                  textAlign: TextAlign.left,
                ),
                SizedBox(
                  width: SizeConfig.defaultSize * 18,
                  child: AutoSizeText(
                    'check  update',
                    textAlign: TextAlign.left,
                    style: Styles.bodyText1.copyWith(
                      color: Colors.white.withOpacity(.5),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
