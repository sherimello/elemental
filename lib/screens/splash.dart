import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shimmer_animation/shimmer_animation.dart';
import 'package:untitled/screens/home.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    var size = Get.size, appBarHeight = AppBar().preferredSize.height;
    RxBool loadingDone = true.obs;

    Timer timer1 = Timer(const Duration(seconds: 4), () {
      loadingDone.value = false;
      print("object");
    });

    Timer timer2 = Timer(const Duration(seconds: 8), () {
      Get.off(() => const Home());
    });

    return Obx(() => Scaffold(
          backgroundColor: Colors.white,
          body: Container(
            width: size.width,
            height: size.height,
            decoration: BoxDecoration(
              color: Colors.white
              // gradient: LinearGradient(
              //     begin: Alignment.bottomRight,
              //     end: Alignment.topLeft,
              //     colors: [
              //       CupertinoColors.black.withOpacity(.75),
              //       Colors.grey.shade200
              //     ])
            ),
            child: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatedContainer(
                  curve: Curves.easeOut,
                  duration: const Duration(milliseconds: 777),
                  width: loadingDone.value == true
                      ? size.width * .3
                      : size.width * .21,
                  height: loadingDone.value == true
                      ? size.width * .3
                      : size.width * .21,
                  child: Shimmer(
                      duration: const Duration(seconds: 2),
                      color: Colors.white,
                      colorOpacity: 1,
                      enabled: loadingDone.value,
                      direction: const ShimmerDirection.fromLTRB(),
                      child: Image.asset(
                        "assets/images/icon.png",
                        fit: BoxFit.contain,
                      )),
                ),
                AnimatedContainer(
                  curve: Curves.easeOut,
                  duration: const Duration(milliseconds: 500),
                  height: loadingDone.value == false ? appBarHeight * .35 : 0,
                ),
                AnimatedDefaultTextStyle(
                    curve: Curves.easeOut,
                    child: Text("elemental"),
                    style: TextStyle(
                        fontFamily: "Rounded_Elegance",
                        fontSize:
                            loadingDone.value == false ? size.width * .077 : 0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54),
                    duration: const Duration(milliseconds: 777))
              ],
            )),
          ),
        ));
  }
}
