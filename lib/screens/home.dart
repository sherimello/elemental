import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gusto_neumorphic/gusto_neumorphic.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:untitled/widgets/home/feature_cards.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  bool menuClicked = false;

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>(); // Add this line
    var size = Get.size, appBarHeight = AppBar().preferredSize.height;

    return Scaffold(
      key: _scaffoldKey,
      endDrawer: Drawer(),
      backgroundColor: Colors.grey.shade400,
      body: Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomRight,
                end: Alignment.topLeft,
                colors: [
              CupertinoColors.black.withOpacity(.31),
              Colors.white
              // Colors.grey.shade200
            ])),
        child: SafeArea(
          child: SingleChildScrollView(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 21.0, right: 21, top: 21),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.asset(
                                "assets/images/profile_picture.png",
                                width: size.width * .135,
                                height: size.width * .135,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(
                              width: 11,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Welcome!",
                                  style: TextStyle(
                                      fontFamily: "varela-round.regular",
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      height: 0,
                                      fontSize: size.width * .045),
                                ),
                                Text(
                                  "Shahriar Rahman",
                                  style: TextStyle(
                                      fontFamily: "varela-round.regular",
                                      // fontWeight: FontWeight.bold,
                                      color: Colors.black54,
                                      height: 0,
                                      fontSize: size.width * .035),
                                ),
                              ],
                            )
                          ],
                        ),
                        Expanded(
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: GestureDetector(
                              onTap: () {
                                print("tapped");
                                setState(() {
                                  menuClicked = !menuClicked;
                                });
                                // _scaffoldKey.currentState!.openEndDrawer();
                              },
                                child: Image.asset("assets/images/menu.png")),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: appBarHeight * .25,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 21.0),
                    child: Neumorphic(
                      style: NeumorphicStyle(
                          shape: NeumorphicShape.convex,
                          depth: 9,
                          boxShape: NeumorphicBoxShape.roundRect(
                              BorderRadius.circular(41)),
                          color: Colors.grey.shade400,
                          intensity: 5,
                          shadowLightColor: Colors.white.withOpacity(.77),
                          shadowDarkColor: Colors.black.withOpacity(.61)),
                      margin: EdgeInsets.all(7),
                      child: Neumorphic(
                        curve: Neumorphic.DEFAULT_CURVE,
                        style: NeumorphicStyle(
                            shape: NeumorphicShape.concave,
                            depth: -7,
                            boxShape: NeumorphicBoxShape.roundRect(
                                BorderRadius.circular(41)),
                            color: Colors.grey.shade400,
                            intensity: 7,
                            shadowLightColor: Colors.white.withOpacity(.77),
                            shadowDarkColor: Colors.black.withOpacity(.61)),
                        padding: const EdgeInsets.symmetric(vertical: 9, horizontal: 11),
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 355),
                          curve: Curves.easeOut,
                          width: size.width,
                          height: menuClicked ? appBarHeight * 5 : size.width * .21,
                          child: Center(
                            child: menuClicked ?
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: size.width * .55,
                                  height: appBarHeight * .87,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(17),
                                    color: Colors.black
                                  ),
                                  child: Center(
                                    child: Text.rich(
                                      TextSpan(
                                        children: [
                                          WidgetSpan(child: Icon(CupertinoIcons.profile_circled, color: Colors.green,), alignment: PlaceholderAlignment.middle),
                                          TextSpan(text: "  Profile",
                                          style: TextStyle(
                                            height: 0,
                                            color: Colors.white,
                                            fontSize: size.width * .035
                                          )
                                          )
                                        ]
                                      )
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 11.0),
                                  child: Container(
                                    width: size.width * .55,
                                    height: appBarHeight * .87,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(17),
                                      color: Colors.white
                                    ),
                                    child: Center(
                                      child: Text.rich(
                                          TextSpan(
                                              children: [
                                                WidgetSpan(child: Icon(Icons.notifications_on_outlined, color: Colors.black,), alignment: PlaceholderAlignment.middle),
                                                TextSpan(text: "  Disaster Notifications",
                                                    style: TextStyle(
                                                        height: 0,
                                                        color: Colors.black,
                                                        fontSize: size.width * .035
                                                    )
                                                )
                                              ]
                                          )
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: size.width * .55,
                                  height: appBarHeight * .87,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(17),
                                    color: Colors.white
                                  ),
                                  child: Center(
                                    child: Text.rich(
                                        TextSpan(
                                            children: [
                                              WidgetSpan(child: Icon(HugeIcons.strokeRoundedLogoutCircle01, color: Colors.black,), alignment: PlaceholderAlignment.middle),
                                              TextSpan(text: "  Log out",
                                                  style: TextStyle(
                                                      height: 0,
                                                      color: Colors.black,
                                                      fontSize: size.width * .035
                                                  )
                                              )
                                            ]
                                        )
                                    ),
                                  ),
                                ),
                              ],
                            )
                            : Text(
                              "click to use the features below",
                              style: TextStyle(
                                  fontFamily: "varela-round.regular",
                                  fontSize: size.width * .037,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: appBarHeight * .25,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 21.0),
                    child: Row(
                      children: [
                        Flexible(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 11, right: 3.5, top: 11, bottom: 11),
                            child: Container(
                              height: appBarHeight * .87,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(17),
                                  color: Colors.black),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset("assets/images/weather.png"),
                                  Text(
                                    "  weather",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: "varela-round.regular",
                                        fontWeight: FontWeight.bold,
                                        fontSize: size.width * .039),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 3.5, right: 11, top: 11, bottom: 11),
                            child: Container(
                              height: appBarHeight * .87,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(17),
                                  color: Colors.black),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset("assets/images/info.png"),
                                  Text(
                                    "  information",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: "varela-round.regular",
                                        fontWeight: FontWeight.bold,
                                        fontSize: size.width * .039),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: appBarHeight * .55,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 33.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const HugeIcon(icon: CupertinoIcons.flame_fill, color: Colors.black),
                        Text(
                          "  features",
                          style: TextStyle(
                              height: 0,
                              color: Colors.black,
                              fontFamily: "varela-round.regular",
                              fontWeight: FontWeight.bold,
                              fontSize: size.width * .045),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: appBarHeight * .25,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 33.0),
                    child: Row(
                      children: [
                        Flexible(
                          flex: 1,
                          child: FeatureCards(tag: "crop recommendations", icon: "assets/images/crop.png", lightIntensity: .67, darkIntensity: .61, cardColor: Colors.grey.shade500,),
                        ),
                        Flexible(
                            flex: 1,
                            child: FeatureCards(tag: "diagnosis", icon: "assets/images/diagnosis.png", lightIntensity: .61, darkIntensity: .61, cardColor: Colors.grey.shade500,)
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 33.0),
                    child: Row(
                      children: [
                        Flexible(
                            flex: 1,
                            child: FeatureCards(tag: "soil identification", icon: "assets/images/soil.png", lightIntensity: .59, darkIntensity: .61, cardColor: Colors.grey.shade600.withOpacity(.75),)
                        ),
                        Flexible(
                            flex: 1,
                            child: FeatureCards(tag: "budget formulation", icon: "assets/images/budget.png", lightIntensity: .55, darkIntensity: .61, cardColor: Colors.grey.shade600.withOpacity(.75),)
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: appBarHeight,)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
