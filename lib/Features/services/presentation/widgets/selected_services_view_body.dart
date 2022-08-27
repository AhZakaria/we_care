import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart' as bloc;
import 'package:get/get.dart';
import 'package:sart_up_project/Features/google_map/presentation/views/google_map_view.dart';
import 'package:sart_up_project/Features/services/presentation/manger/cubit/selected_services_cubit.dart';
import 'package:sart_up_project/Features/services/presentation/widgets/app_bar_left_curve_painter.dart';
import 'package:sart_up_project/Features/services/presentation/widgets/app_bar_right_curve_painater.dart';
import 'package:sart_up_project/Features/services/presentation/widgets/selected_service_item.dart';
import 'package:sart_up_project/Features/services/presentation/widgets/selected_services_list.dart';
import 'package:sart_up_project/Features/services/presentation/widgets/services_list.dart';
import 'package:sart_up_project/Features/services/presentation/widgets/services_view_body.dart';
import 'package:sart_up_project/core/widgets/custom_general_button.dart';

import '../../../../constants.dart';
import '../../../../core/utils/size_config.dart';
import '../../../../core/widgets/custom_search_text_field.dart';
import '../../../../core/widgets/space_box.dart';
import '../../../../styles.dart';
import 'custom_service_appbar.dart';
import 'custom_services_button.dart';

class SelectedServicesViewBody extends StatelessWidget {
  const SelectedServicesViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.screenHeight,
      width: SizeConfig.screenWidth,
      child: Stack(
        children: [
          CustomPaint(
            size: Size(SizeConfig.screenWidth, SizeConfig.defaultSize * 20),
            painter: AppBarRightCurvePainter(),
          ),
          CustomPaint(
            size: Size(SizeConfig.screenWidth, SizeConfig.defaultSize * 20),
            painter: AppBarLeftCurvePainter(),
          ),
          Padding(
            padding: EdgeInsets.only(top: SizeConfig.defaultSize * 6),
            child: CustomServicesAppBar(),
          ),
          Positioned.fill(
              bottom: 0,
              top: SizeConfig.defaultSize * 12,
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SpaceBox(
                        height: 2.5,
                      ),
                      Text(
                        'Selected Services',
                        style: Styles.bodyText2.copyWith(
                          color: Colors.black,
                        ),
                      ),
                      SpaceBox(
                        height: 2.5,
                      ),
                      Expanded(child: SelectedServicesList()),
                      SpaceBox(
                        height: 1.5,
                      ),
                      CustomServicesViewButton(
                        onTap: () {
                          Get.to(() => GoogleMapView(),
                              transition: Transition.fade);
                        },
                      ),
                      SpaceBox(
                        height: 3,
                      ),
                    ],
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
