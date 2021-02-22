import 'package:flutter/material.dart';
import 'package:pokedex/core/colors/colors.dart';

class OutRectangle extends StatelessWidget {
  final Size size;

  const OutRectangle({Key key, this.size}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Container(
        height: 250,
        width: size.width * 0.85,
        color: AppColors.screenFrame,
      ),
    );
  }
}

class InnerRectangle extends StatelessWidget {
  final Size size;

  const InnerRectangle({Key key, this.size}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Container(
        height: 170,
        width: size.width * 0.7,
        color: AppColors.innerScreen,
      ),
    );
  }
}

class ScreenGame extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var centerX = size.width / 2;
    var centerY = size.height / 2;
    var center = Offset(centerX, centerY);
    var center2 = Offset(centerX, centerY - 10);

    Paint innerScreen = Paint()..color = AppColors.innerScreen;

    Paint outterScreen = Paint()..color = AppColors.screenFrame;

    Rect outRect = Rect.fromCenter(width: 370, height: 300, center: center);
    RRect outRrect = RRect.fromRectAndRadius(outRect, Radius.circular(20));

    // canvas.drawRRect(outRrect, outterScreen);

    Path path = Path();

    Paint paint = Paint()
      ..color = Colors.amber
      ..style = PaintingStyle.fill;

    var roundedFactor = 30.0;
    path.moveTo(0, 0 + roundedFactor);
    path.lineTo(0, size.height - 40);
    //path.quadraticBezierTo(0, size.height, roundedFactor, size.height);
    path.lineTo(40, size.height);
    path.lineTo(size.width - roundedFactor, size.height);
    path.quadraticBezierTo(
        size.width, size.height, size.width, size.height - roundedFactor);
    path.lineTo(size.width, size.height - (size.height - roundedFactor));
    path.quadraticBezierTo(size.width, 0, size.width - roundedFactor, 0);
    path.lineTo(size.width - (size.width - roundedFactor), 0);
    path.quadraticBezierTo(
        0, 0, 0, size.height - (size.height - roundedFactor));

    // path.lineTo(size.width, 0);

    canvas.drawPath(path, outterScreen);

    //Size smallSize = size * 0.8;
    Path path2 = Path();
    Rect inRect = Rect.fromCenter(width: 300, height: 180, center: center2);
    RRect inRrect = RRect.fromRectAndRadius(inRect, Radius.circular(8));

    canvas.drawRRect(inRrect, innerScreen);

    canvas.drawPath(path2, innerScreen);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}
