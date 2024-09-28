import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class BodgetFormulation extends StatefulWidget {
  const BodgetFormulation({super.key});

  @override
  State<BodgetFormulation> createState() => _BodgetFormulationState();
}

class _BodgetFormulationState extends State<BodgetFormulation> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var appBarHeight = AppBar().preferredSize.height;

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(21.0),
          child: Container(
            width: size.width,
            height: appBarHeight * 2,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(31),
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(17.0),
                child: Text(
                  "get help in preparing the budget for your next cultivation",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 17),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(21.0, 21, 21, 11),
          child: Row(
            children: [
              Flexible(
                child: Container(
                  height: appBarHeight * .87,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(11)),
                  child: RadioMenuButton(value: true, groupValue: true, onChanged: (value){}, child: Text("Paddy"), style: ButtonStyle(alignment: Alignment.center, ),),
                ),
                flex: 1,
              ),
              SizedBox(
                width: 11,
              ),
              Flexible(
                child: Container(
                  height: appBarHeight * .87,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(11)),
                  child: RadioMenuButton(value: true, groupValue: false, onChanged: (value){}, child: Text("others"), style: ButtonStyle(alignment: Alignment.center, ),),
                ),
                flex: 1,
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(21,21,21,7),
            child: Text("Crop Name",style: TextStyle(fontWeight: FontWeight.w900,),),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(21.0, 0, 21, 11),
          child: Container(
            width: size.width,
            height: appBarHeight * .87,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(17),
                color: Colors.grey.shade200),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 17),
                child: Text.rich(TextSpan(children: [
                  WidgetSpan(
                      child: Icon(
                        HugeIcons.strokeRoundedLeaf01,
                        color: Colors.black,
                      ),
                      alignment: PlaceholderAlignment.middle),
                  TextSpan(
                      text: "  Aus",
                      style: TextStyle(
                          height: 0,
                          color: Colors.black,
                          fontSize: size.width * .035))
                ])),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(21,0,21,7),
            child: Text("Area",style: TextStyle(fontWeight: FontWeight.w900,),),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(21.0, 0, 21, 11),
          child: Container(
            width: size.width,
            height: appBarHeight * .87,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(17),
                color: Colors.grey.shade200),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 17),
                child: Text.rich(TextSpan(children: [
                  WidgetSpan(
                      child: Icon(
                        HugeIcons.strokeRoundedLocation01,
                        color: Colors.black,
                      ),
                      alignment: PlaceholderAlignment.middle),
                  TextSpan(
                      text: "  Chittagong",
                      style: TextStyle(
                          height: 0,
                          color: Colors.black,
                          fontSize: size.width * .035))
                ])),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(21,0,21,7),
            child: Text("Land Area (in Acres)",style: TextStyle(fontWeight: FontWeight.w900,),),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(21.0, 0, 21, 21),
          child: Container(
            width: size.width,
            height: appBarHeight * .87,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(17),
                color: Colors.grey.shade200),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 17),
                child: Text.rich(TextSpan(children: [
                  WidgetSpan(
                      child: Icon(
                        HugeIcons.strokeRoundedMaping,
                        color: Colors.black,
                      ),
                      alignment: PlaceholderAlignment.middle),
                  TextSpan(
                      text: "  0.69 acres",
                      style: TextStyle(
                          height: 0,
                          color: Colors.black,
                          fontSize: size.width * .035))
                ])),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(21,0,21,21),
          child: Container(
            width: size.width,
            height: appBarHeight * .87,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(17),
                color: Colors.black
            ),
            child: Center(
              child: Text.rich(
                  TextSpan(
                      children: [
                        WidgetSpan(child: Icon(CupertinoIcons.check_mark_circled, color: Colors.green,), alignment: PlaceholderAlignment.middle),
                        TextSpan(text: "  Check",
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
        )
      ],
    );
  }
}
