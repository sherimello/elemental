import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CropDiseaseUi extends StatefulWidget {
  const CropDiseaseUi({super.key});

  @override
  State<CropDiseaseUi> createState() => _CropDiseaseUiState();
}

class _CropDiseaseUiState extends State<CropDiseaseUi> {

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
                child: Text("identify your crop's disease by uploading a photo", textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900, fontSize: 17),),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(21.0,21,21,11),
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
                        WidgetSpan(child: Icon(CupertinoIcons.camera, color: Colors.green,), alignment: PlaceholderAlignment.middle),
                        TextSpan(text: "  Take a photo",
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
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(21.0,0,21,21),
          child: Container(
            width: size.width,
            height: appBarHeight * .87,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(17),
                color: Colors.grey.shade200
            ),
            child: Center(
              child: Text.rich(
                  TextSpan(
                      children: [
                        WidgetSpan(child: Icon(CupertinoIcons.photo, color: Colors.black,), alignment: PlaceholderAlignment.middle),
                        TextSpan(text: "  Choose from gallery",
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

      ],
    );
  }
}
