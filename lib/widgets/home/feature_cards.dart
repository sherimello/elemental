import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gusto_neumorphic/gusto_neumorphic.dart';

class FeatureCards extends StatelessWidget {

  final String tag, icon;
  final double lightIntensity, darkIntensity;
  final Color cardColor;

  const FeatureCards({super.key, required this.tag, required this.icon, required this.lightIntensity, required this.darkIntensity, required this.cardColor});

  @override
  Widget build(BuildContext context) {

    var size = Get.size;

    return Neumorphic(
      style: NeumorphicStyle(
          shape: NeumorphicShape.convex,
          depth: 15,
          boxShape: NeumorphicBoxShape.roundRect(
              BorderRadius.circular(41)),
          color: Colors.grey.shade400,
          intensity: 2,
          shadowLightColor: Colors.white.withOpacity(lightIntensity),
          shadowDarkColor: Colors.black.withOpacity(darkIntensity - .09)),
      margin: EdgeInsets.all(7),
      child: Neumorphic(
        curve: Neumorphic.DEFAULT_CURVE,
        style: NeumorphicStyle(
            shape: NeumorphicShape.concave,
            depth: -0,
            boxShape: NeumorphicBoxShape.roundRect(
                BorderRadius.circular(41)),
            color: cardColor,
            intensity: 10,
            shadowLightColor:
            Colors.white.withOpacity(.44),
            shadowDarkColor:
            Colors.black.withOpacity(.61)),
        // margin: EdgeInsets.all(3),
        padding: const EdgeInsets.symmetric(
            vertical: 9, horizontal: 11),
        child: SizedBox(
          height: size.width * .335,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(7.0),
              child: Column(
                mainAxisAlignment:
                MainAxisAlignment.center,
                children: [
                  Image.asset(icon, width: size.width * .135, height: size.width * .135,),
                  const SizedBox(height: 7,),
                  Text(
                    tag,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        height: 0,
                        fontFamily: "varela-round.regular",
                        fontSize: size.width * .031,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
