import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sart_up_project/Features/splash_view/presentaion/widgets/splash_view_body.dart';
import 'package:sart_up_project/constants.dart';
import 'package:sart_up_project/core/utils/size_config.dart';
import 'package:sart_up_project/profile/views/splash_view_body2.dart';

class SplashView2 extends StatelessWidget {
  const SplashView2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SplashViewBody2(),
    );
  }
}
