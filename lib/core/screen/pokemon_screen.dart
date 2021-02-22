import 'package:flutter/material.dart';
import 'package:pokedex/core/colors/colors.dart';
import 'package:pokedex/core/components/challenge_components.dart';
import 'package:pokedex/core/components/component.dart';
import 'package:pokedex/core/screen/rect-componest.dart';

class PokemonScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: AppColors.pokeballRedBottom,
        body: Column(
          children: [
            Stack(
              children: [
                ClipPath(
                  child: Container(
                    height: size.height * 0.327,
                    color: AppColors.shadowTopSide,
                  ),
                  clipper: ShadowTopPanel(),
                ),
                ClipPath(
                  child: Container(
                    height: size.height * 0.3,
                    color: AppColors.topSide,
                  ),
                  clipper: TopPanel(),
                ),
                Positioned(
                  left: 40,
                  top: 60,
                  child: Container(
                    height: 100,
                    width: 100,
                    //color: Colors.amber,
                    child: CustomPaint(
                      painter: ButtomTop(),
                    ),
                  ),
                )
              ],
            ),
            Stack(
              children: [
                Container(
                    padding: EdgeInsets.only(top: 50),
                    height: 300,
                    width: size.width * 0.85,
                    child: CustomPaint(
                      painter: ScreenGame(),
                    )),
              ],
            )

            /* Container(
              child: CustomPaint(
                size: Size(
                    size.width,
                    (size.width * 2.002433090024331)
                        .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                painter: RPSCustomPainter(),
              ),
            ), */
          ],
        ));
  }
}
