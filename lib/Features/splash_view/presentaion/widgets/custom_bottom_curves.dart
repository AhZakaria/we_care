
 import 'package:flutter/material.dart';

import '../../../../constants.dart';
class BottomLeftCurve extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    paint.color = kSecondaryColor.withOpacity(.3);
    paint.strokeWidth = 15;
    Path path = Path();
    double width = size.width;
    double height = size.height;
    canvas.drawShadow(path, kPrimaryColor, 2.0, false);
    path.quadraticBezierTo(width / 2, height / 2, width, height * .7);

    path.lineTo(size.width, size.height);

    path.lineTo(0, height);
    var rect = Offset.zero & size;
    Path rectPathThree = Path();

    paint.shader = const LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
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

class BottomRightCurve extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    paint.color = kSecondaryColor.withOpacity(.3);
    paint.strokeWidth = 15;
    Path path = Path();
    double width = size.width;
    double height = size.height;
    canvas.drawShadow(path, kPrimaryColor, 2.0, false);
    path.moveTo(0, height * .3);
    path.quadraticBezierTo(width / 2, height * .3, width, 0);

    path.lineTo(size.width, size.height);

    path.lineTo(0, height);
    var rect = Offset.zero & size;
    Path rectPathThree = Path();

    paint.shader = const LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
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
