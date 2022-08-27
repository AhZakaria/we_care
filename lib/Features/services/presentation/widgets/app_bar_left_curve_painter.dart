import 'package:flutter/material.dart';

import '../../../../constants.dart';

class AppBarLeftCurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    paint.color = kSecondaryColor.withOpacity(.1);
    paint.strokeWidth = 15;

    Path path = Path();

    path.lineTo(0, size.height * .8);
    path.quadraticBezierTo(
        size.width * .3, size.height * .2, size.width, size.height * .2);
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
