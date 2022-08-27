
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../constants.dart';
import '../../../../core/utils/Assets.dart';
import '../../../../core/utils/size_config.dart';
import '../../../../core/widgets/space_box.dart';
import '../../../../styles.dart';

class ServiceItem extends StatelessWidget {
  const ServiceItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(
            16,
          )),
      child: SizedBox(
        width: SizeConfig.screenWidth,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              Assets.service,
              height: SizeConfig.defaultSize * 5,
            ),
            SpaceBox(
              width: 3,
            ),
            ServiceInfo(),
            Spacer(
              flex: 2,
            ),
            Container(
              width: SizeConfig.defaultSize * 6,
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: kSecondaryColor,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  const SpaceBox(
                    width: .5,
                  ),
                  Text(
                    '4',
                    style: Styles.bodyText1.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            Spacer(
              flex: 3,
            ),
          ],
        ),
      ),
    );
  }
}

class ServiceInfo extends StatelessWidget {
  const ServiceInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Al Borg Lap',
          style: Styles.bodyText2.copyWith(
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SpaceBox(
          height: .7,
        ),
        Text(
          '4 Services',
          style: Styles.bodyText1.copyWith(
            color: Colors.black,
          ),
        ),
        const SpaceBox(
          height: 1.5,
        ),
        Row(
          children: [
            Container(
              height: SizeConfig.defaultSize * 2,
              width: SizeConfig.defaultSize * 2,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    4,
                  ),
                  color: kSecondaryColor),
              child: Icon(
                FontAwesomeIcons.dollarSign,
                size: 13,
                color: Colors.white,
              ),
            ),
            const SpaceBox(
              width: 1,
            ),
            Text(
              '400',
              style: Styles.bodyText1.copyWith(
                decoration: TextDecoration.lineThrough,
                color: Colors.grey,
              ),
            ),
            const SpaceBox(
              width: 1,
            ),
            Text(
              '200 LE',
              style: Styles.bodyText2.copyWith(
                color: Colors.black,
              ),
            ),
          ],
        ),
        SpaceBox(
          height: .7,
        ),
        Row(
          children: [
            Icon(
              FontAwesomeIcons.locationPin,
              color: kSecondaryColor,
            ),
            SpaceBox(
              width: 1,
            ),
            Text(
              '15 El Midan St. - Smouha',
              style: Styles.bodyText1.copyWith(
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
