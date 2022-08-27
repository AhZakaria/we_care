import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart' as bloc;
import 'package:get/get.dart';
import 'package:sart_up_project/Features/services/presentation/manger/cubit/selected_services_cubit.dart';
import 'package:sart_up_project/Features/services/presentation/views/selected_services_view.dart';
import 'package:sart_up_project/Features/services/presentation/widgets/app_bar_left_curve_painter.dart';
import 'package:sart_up_project/Features/services/presentation/widgets/app_bar_right_curve_painater.dart';
import 'package:sart_up_project/Features/services/presentation/widgets/custom_service_appbar.dart';
import 'package:sart_up_project/Features/services/presentation/widgets/custom_services_button.dart';
import 'package:sart_up_project/Features/services/presentation/widgets/services_list.dart';
import 'package:sart_up_project/Features/services/presentation/widgets/services_list_item.dart';
import 'package:sart_up_project/Features/splash_view/presentaion/widgets/custom_top_curves.dart';
import 'package:sart_up_project/constants.dart';
import 'package:sart_up_project/core/utils/size_config.dart';
import 'package:sart_up_project/core/widgets/custom_general_button.dart';
import 'package:sart_up_project/core/widgets/custom_search_text_field.dart';
import 'package:sart_up_project/core/widgets/custom_text_field.dart';
import 'package:sart_up_project/core/widgets/space_box.dart';
import 'package:sart_up_project/profile/widgets/custom_profile_appbar.dart';
import 'package:sart_up_project/styles.dart';


class ProfilePaymentMethod extends StatelessWidget {
  const ProfilePaymentMethod({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(12, 219, 170, 0.75),
      body: Container(
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
              child: CustomProfileAppBar(),
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
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CustomTextFormField(
                            suffexIcon: Icon(Icons.remove_red_eye),
                            inputType: TextInputType.visiblePassword,
                            obsecureText: true,
                            enablePaste: false,
                            hintText: Text('Name On Card',style: TextStyle(color: Colors.black),),
                            title: 'Name On Card',
                          ),
                          SpaceBox(height: 5,),
                          CustomTextFormField(
                            suffexIcon: Icon(Icons.remove_red_eye),
                            inputType: TextInputType.visiblePassword,
                            obsecureText: true,
                            enablePaste: false,
                            hintText: Text(
                                Get.arguments ?? 'Card Number',
                                style: Styles.bodyText1.copyWith(
                                  color: Colors.black,
                                )),
                            title: '     /      /      /     ',
                          ),
                          SpaceBox(height: .5,),
                          Container(
                            alignment: Alignment.center,
                            child: Text(
                                Get.arguments ?? 'Password Should Be Between 5 & 20 Characters',
                                style: Styles.bodyText1.copyWith(
                                  color: Colors.red,
                                )),
                          )
                        ],
                      ),
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
