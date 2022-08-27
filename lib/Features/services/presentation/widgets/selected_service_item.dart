import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../../../../core/utils/size_config.dart';
import '../../../../core/widgets/custom_general_button.dart';
import '../../../../core/widgets/space_box.dart';
import '../../../../styles.dart';
import 'custom_add_remove_button.dart';

class SelectedServiceItem extends StatelessWidget {
  const SelectedServiceItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 24, horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Color(0xffd7dbe2).withOpacity(.6),
            blurRadius: 30,
            spreadRadius: 4,
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: SizeConfig.defaultSize * 21,
            child: Text(
              'Lorem Ipsum Dolor Sit Amet, Consetetur Sadipscing Elitr, Sed Diam Nonumy Eirmod Tempor Invidunt Ut Labore Et Dolore Magna Aliquyam Erat, Sed Diam Voluptua',
              maxLines: 2,
              style: Styles.bodyText1.copyWith(
                fontSize: 16,
                color: Color(
                  0xff3A3A3A,
                ),
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SpaceBox(
            height: 2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CustomButton(
                width: SizeConfig.defaultSize * 10,
                high: SizeConfig.defaultSize * 4,
                text: 'Delete',
                textColor: const Color(0xffFE7979),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: const Color(0xffFE7979),
                    )),
              ),
              SpaceBox(
                width: 3,
              ),
              CustomAddRemoveButtom(
                
              ),
              SpaceBox(
                width: 1,
              ),
              Text(
                '2',
                style: Styles.bodyText1.copyWith(color: Color(0xff3A3A3A)),
              ),
              SpaceBox(
                width: 1,
              ),
              CustomAddRemoveButtom(
                isLeft: false,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
