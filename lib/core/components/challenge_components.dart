import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/core/colors/colors.dart';
import 'dart:ui' as ui;

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

//Add this CustomPaint widget to the Widget Tree

//Copy this CustomPainter code to the Bottom of the File
class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Color(0xffE5E5E5).withOpacity(0.5);
    canvas.drawRect(Rect.fromLTWH(0, 0, size.width, size.height), paint_0_fill);

    Paint paint_1_fill = Paint()..style = PaintingStyle.fill;
    paint_1_fill.color = Colors.white.withOpacity(1.0);
    canvas.drawRect(Rect.fromLTWH(0, 0, size.width, size.height), paint_1_fill);

    Path path_2 = Path();
    path_2.moveTo(0, 0);
    path_2.lineTo(size.width, 0);
    path_2.lineTo(size.width, size.height * 0.2442284);
    path_2.lineTo(size.width * 0.9135815, size.height * 0.2442284);
    path_2.lineTo(size.width * 0.9135815, size.height * 0.08770304);
    path_2.lineTo(size.width * 0.5901241, size.height * 0.08770304);
    path_2.lineTo(size.width * 0.4185182, size.height * 0.2442284);
    path_2.lineTo(0, size.height * 0.2442284);
    path_2.lineTo(0, 0);
    path_2.close();

    Paint paint_2_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    paint_2_stroke.color = Color(0xffB82626).withOpacity(1.0);
    canvas.drawPath(path_2, paint_2_stroke);

    Paint paint_2_fill = Paint()..style = PaintingStyle.fill;
    paint_2_fill.color = Color(0xffB82626).withOpacity(1.0);
    canvas.drawPath(path_2, paint_2_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
