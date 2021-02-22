import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:pokedex/core/colors/colors.dart';

class TopPanel extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    // TODO: implement getClip
    Path path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width * 0.4, size.height);
    path.lineTo(size.width * 0.55, size.height * 0.4);
    path.lineTo(size.width * 0.95, size.height * 0.4);
    path.lineTo(size.width * 0.95, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }
}

class ShadowTopPanel extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    // TODO: implement getClip
    Path path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width * 0.425, size.height);
    path.lineTo(size.width * 0.58, size.height * 0.435);
    path.lineTo(size.width * 0.95, size.height * 0.435);
    path.lineTo(size.width * 0.95, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }
}
/* 
class MyClip3 extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    // TODO: implement getClip
    Path path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width * 0.4, size.height);
    path.lineTo(size.width * 0.55, size.height * 0.4);
    path.lineTo(size.width * 0.5, size.height * 0.4);
    path.lineTo(size.width * 0.95, size.height * 0.4);
    path.lineTo(size.width * 0.95, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }
} */
/* 
class MyClip extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    // TODO: implement getClip
    Path path = Path();
    path.lineTo(0, size.height - 10);
    path.lineTo(size.width * 0.43, size.height - 10);
    path.lineTo(size.width * 0.60, (size.height * 0.4) - 10);
    path.lineTo(size.width * 0.5, size.height * 0.4);
    path.lineTo(size.width * 0.95, size.height * 0.4);
    path.lineTo(size.width * 0.95, size.height - 10);
    path.lineTo(size.width, size.height - 10);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }
} */

class Shadow extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    Path path = Path();
    path.moveTo(0, size.height * 0.3);
    path.lineTo(size.width * 0.4, 0);
    path.lineTo(size.width * 0.4, size.height * 0.2);
    path.lineTo(-(size.width * 0.5), size.height * 0.4);
    /* path.lineTo(size.width * 0.95, size.height * 0.4);
    path.lineTo(size.width * 0.95, size.height); */
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return false;
  }
}

class ButtomTop extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var centerX = size.width / 2;
    var centerY = size.height / 2;
    var center = Offset(centerX, centerY);
    var center2 = Offset(centerX - 10, centerY - 10);
    var radius = min(centerX, centerY);

    var fillBrush = Paint()..color = AppColors.screenFrame;
    var innerRect = Paint()
      ..shader =
          RadialGradient(colors: [AppColors.lampInner, AppColors.lampOuter])
              .createShader(Rect.fromCircle(center: center, radius: 38));

    canvas.drawCircle(center, radius, fillBrush);
    canvas.drawCircle(center, radius - 10, innerRect);
    canvas.drawCircle(center2, 6, fillBrush);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }
}
