import 'package:flutter/material.dart';

import '../../../../constants.dart';

class LeftCurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    paint.color = kSecondaryColor.withOpacity(.3);
    paint.strokeWidth = 15;

    Path path = Path();

    path.lineTo(0, size.height * .8);
    path.quadraticBezierTo(
        size.width / 2, size.height / 2, size.width, size.height * .4);
    path.lineTo(size.width, size.height);

    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);
    var rect = Offset.zero & size;

    paint.shader = const LinearGradient(
      begin: Alignment.bottomCenter,
      end: Alignment.topCenter,
      colors: [
        Colors.white,
        Colors.white,
        kSecondaryColor,
        kSecondaryColor,
        kSecondaryColor,
        kSecondaryColor,
      ],
    ).createShader(rect);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class RightCurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    paint.color = kSecondaryColor.withOpacity(.3);
    paint.strokeWidth = 15;
    Path path = Path();
    canvas.drawShadow(path, kPrimaryColor, 2.0, false);
    path.lineTo(0, size.height * .6);
    path.quadraticBezierTo(
        size.width * .2, size.height * .7, size.width, size.height * .8);
    path.lineTo(size.width, size.height);

    path.lineTo(size.width, 0);
    var rect = Offset.zero & size;
    Path rectPathThree = Path();

    paint.shader = const LinearGradient(
      begin: Alignment.bottomCenter,
      end: Alignment.topCenter,
      colors: [
        Colors.white,
        Colors.white,
        kSecondaryColor,
        kSecondaryColor,
        kSecondaryColor,
        kSecondaryColor,
      ],
    ).createShader(rect);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
