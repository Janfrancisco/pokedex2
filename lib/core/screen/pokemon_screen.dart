import 'package:flutter/material.dart';
import 'package:pokedex/core/colors/colors.dart';
import 'package:pokedex/core/components/challenge_components.dart';
import 'package:pokedex/core/components/component.dart';

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
            )
          ],
        ));
  }
}
