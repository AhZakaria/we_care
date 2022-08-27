import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sart_up_project/Features/services/presentation/views/services_view.dart';
import 'package:sart_up_project/Features/google_map/presentation/views/google_map_view.dart';

import '../../../../core/utils/Assets.dart';
import '../../../../core/utils/size_config.dart';
import '../../../../core/widgets/space_box.dart';
import '../../../../styles.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({Key? key, required this.text, required this.image})
      : super(key: key);

  final String text;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          Get.to(() => ServicesView(),
              transition: Transition.fade, arguments: text);
        },
        child: Container(
          width: SizeConfig.defaultSize * 12,
          height: SizeConfig.defaultSize * 11,
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                image,
                height: SizeConfig.defaultSize * 4,
              ),
              SpaceBox(
                height: 1,
              ),
              Text(
                text,
                textAlign: TextAlign.center,
                style: Styles.bodyText1
                    .copyWith(color: Colors.black, fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
