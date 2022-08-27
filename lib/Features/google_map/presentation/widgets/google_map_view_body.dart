import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sart_up_project/Features/google_map/presentation/widgets/service_card.dart';
import 'package:sart_up_project/Features/google_map/presentation/widgets/services_list.dart';
import 'package:sart_up_project/constants.dart';
import 'package:sart_up_project/core/utils/Assets.dart';
import 'package:sart_up_project/core/utils/size_config.dart';
import 'package:sart_up_project/core/widgets/custom_general_button.dart';
import 'package:sart_up_project/core/widgets/custom_google_map.dart';
import 'package:sart_up_project/core/widgets/custom_search_text_field.dart';
import 'package:sart_up_project/core/widgets/space_box.dart';
import 'package:sart_up_project/styles.dart';

import 'filter_list.dart';

class GoogleMapViewBody extends StatelessWidget {
  const GoogleMapViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomGoogleMap(),
        Positioned(
          top: SizeConfig.topPadding,
          child: Column(
            children: [
              SizedBox(
                width: SizeConfig.screenWidth,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 16,
                  ),
                  child: Row(
                    children: [
                      CustomContainerIcon(
                        backgrounColor: Colors.white,
                        iconColor: kPrimaryColor,
                        icon: Icons.arrow_back_ios_new,
                        size: SizeConfig.defaultSize * 5,
                      ),
                      SpaceBox(
                        width: 2,
                      ),
                      Expanded(
                        child: CustomSearchTextField(
                          suffixIcon: Icons.filter_alt,
                          verticalPadding: SizeConfig.defaultSize * 5,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Filterlist(),
            ],
          ),
        ),
        Positioned(
          bottom: 16,
          child: GoogleMapServicesList(),
        ),
      ],
    );
  }
}
