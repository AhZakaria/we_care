import 'package:flutter/material.dart';
import 'package:sart_up_project/core/utils/Assets.dart';

import '../../../../core/utils/size_config.dart';
import '../../../../core/widgets/space_box.dart';
import '../../../../styles.dart';
import 'categories_item.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          //the top padding is relative to the content padding of the search text field
          left: 16,
          right: 16,
          top: SizeConfig.defaultSize * 5.7 / 2 + 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'What Do you need ?',
            style: Styles.bodyText2.copyWith(
              color: Colors.black,
            ),
          ),
          SpaceBox(
            height: 2,
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CategoryItem(
                    text: 'Hospital',
                    image: Assets.hospital,
                  ),
                  const SpaceBox(
                    width: 1.5,
                  ),
                  CategoryItem(
                    text: 'Doctor',
                    image: Assets.doctor,
                  ),
                  const SpaceBox(
                    width: 1.5,
                  ),
                  CategoryItem(
                    text: 'Pharmacy',
                    image: Assets.pharmacy,
                  ),
                ],
              ),
              SpaceBox(
                height: 1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CategoryItem(
                    text: 'Radiology',
                    image: Assets.radiology,
                  ),
                  const SpaceBox(
                    width: 1.5,
                  ),
                  CategoryItem(
                    text: 'Lap',
                    image: Assets.lap,
                  ),
                  const SpaceBox(
                    width: 1.5,
                  ),
                  CategoryItem(
                    text: 'Physical Therpay',
                    image: Assets.physicalTherpay,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
