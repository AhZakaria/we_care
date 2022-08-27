import 'package:flutter/material.dart';
import 'package:sart_up_project/constants.dart';
import 'package:sart_up_project/core/utils/Assets.dart';

class Styles {
  static TextStyle bodyText1 = TextStyle(
    fontSize: 14,
    color: Colors.white,
    fontFamily: 'OpenSans',
  );

  static TextStyle bodyText3 = const TextStyle(
    fontSize: 24,
    color: Colors.white,
    fontFamily: 'OpenSans',
  );

  static TextStyle bodyText4 = const TextStyle(
      fontSize: 30,
      color: Colors.white,
      fontFamily: 'OpenSans',
      fontWeight: FontWeight.w700,
      height: 0);

  static TextStyle bodyText2 = const TextStyle(
      fontSize: 18,
      color: Colors.white,
      fontFamily: 'OpenSans',
      fontWeight: FontWeight.w700,
      height: 0);
  static const TapText = TextStyle(
    fontFamily: 'OpenSans',
    fontSize: 12,
    color: Colors.white,
    fontWeight: FontWeight.w700,
  );

  static const title = TextStyle(
    fontFamily: 'OpenSans',
    fontSize: 54,
    color: Colors.white,
    fontWeight: FontWeight.w700,
  );

  static TextStyle buttonText = const TextStyle(
    fontFamily: 'Cairo',
    fontSize: 18,
    color: Color(0xffffffff),
    fontWeight: FontWeight.w700,
  );
}
