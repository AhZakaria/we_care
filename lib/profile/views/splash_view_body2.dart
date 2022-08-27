import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:sart_up_project/Features/Home/presentaion/views/home_view.dart';
import 'package:sart_up_project/Features/splash_view/presentaion/widgets/custom_bottom_curves.dart';
import 'package:sart_up_project/Features/splash_view/presentaion/widgets/custom_top_curves.dart';
import 'package:sart_up_project/constants.dart';
import 'package:sart_up_project/core/utils/size_config.dart';
import 'package:sart_up_project/profile/views/profile_change_password.dart';
import 'package:sart_up_project/styles.dart';



class SplashViewBody2 extends StatefulWidget {
  const SplashViewBody2({Key? key}) : super(key: key);

  @override
  State<SplashViewBody2> createState() => _SplashViewBody2State();
}

class _SplashViewBody2State extends State<SplashViewBody2>
    with TickerProviderStateMixin {

  late Animation<Offset> _slideAnimation;
  late AnimationController _slideanimationController;

  late AnimationController rightAnimationController;
  late Animation rightAnimation;

  late AnimationController leftAnimationController;
  late Animation leftAnimation;

  @override
  void initState() {
    super.initState();
    goToNextPage();
    initRightAnimation();
    initLeftAnimation();
    initSlideAnimation();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: 0,
          right: 0,
          child: CustomPaint(
            size: Size(
              SizeConfig.screenWidth,
              rightAnimation.value,
            ),
            painter: RightCurvePainter(),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          child: CustomPaint(
            size: Size(
              SizeConfig.screenWidth,
              leftAnimation.value,
            ),
            painter: LeftCurvePainter(),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: CustomPaint(
            size: Size(
              SizeConfig.screenWidth,
              leftAnimation.value,
            ),
            painter: BottomLeftCurve(),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: CustomPaint(
            size: Size(
              SizeConfig.screenWidth,
              rightAnimation.value,
            ),
            painter: BottomRightCurve(),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: double.infinity,
            ),
            Text(
              'We\nCare',
              style: Styles.title,
              textAlign: TextAlign.center,
            ),
            SlideTransition(
              position: _slideAnimation,
              child: Text(
                'Lorem ipsum',
                style: Styles.bodyText1,
              ),
            ),
          ],
        ),
      ],
    );
  }

  void goToNextPage() {
    Future.delayed(const Duration(milliseconds: 2500), () {
      Get.to(() => const ProfileChangePassword(), transition: Transition.fade);
    });
  }

  void initSlideAnimation() {
    _slideanimationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1500));
    _slideAnimation =
        Tween<Offset>(begin: const Offset(0, 3), end: Offset.zero).animate(
          CurvedAnimation(parent: _slideanimationController, curve: Curves.linear),
        );

    _slideanimationController.forward();
  }

  void initRightAnimation() {
    rightAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );

    rightAnimation = Tween<double>(
        begin: SizeConfig.defaultSize * 17,
        end: SizeConfig.defaultSize * 25)
        .animate(CurvedAnimation(
        parent: rightAnimationController, curve: Curves.linear));

    rightAnimationController.repeat(reverse: true);
  }

  void initLeftAnimation() {
    leftAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );

    leftAnimation = Tween<double>(
        begin: SizeConfig.defaultSize * 25,
        end: SizeConfig.defaultSize * 17)
        .animate(CurvedAnimation(
        parent: leftAnimationController, curve: Curves.linear));

    leftAnimationController.repeat(reverse: true);
    leftAnimation.addListener(() {
      setState(() {});
    });
  }
}
