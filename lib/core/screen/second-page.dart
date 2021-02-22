import 'package:flutter/material.dart';
import 'package:pokedex/core/components/challenge_components.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      /* appBar: AppBar(
        title: Text('Second Page'),
      ), */
      body: Container(
        child: CustomPaint(
          size: Size(
              size.width,
              (size.width * 2.002433090024331)
                  .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
          painter: RPSCustomPainter(),
        ),
      ),
    );
  }
}
