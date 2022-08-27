import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:sart_up_project/constants.dart';
import 'package:sart_up_project/core/utils/Assets.dart';
import 'package:sart_up_project/core/utils/size_config.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).viewPadding.top;

    return Padding(
      padding: EdgeInsets.only(top: height + 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              Assets.profile,
              height: SizeConfig.defaultSize * 4.6,
            ),
          ),
          Container(
            height: SizeConfig.defaultSize * 4.2,
            width: SizeConfig.defaultSize * 4.2,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: Icon(
                Icons.notifications,
                size: 24,
                color: kPrimaryColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
