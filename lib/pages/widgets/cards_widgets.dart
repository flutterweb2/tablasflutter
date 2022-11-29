import 'package:flutter/material.dart';

class MyCards extends StatelessWidget {
  String myText;
  MaterialColor myColor;
  
  MyCards({super.key, required this.myText, required this.myColor});

  @override
  Widget build(BuildContext context) {
    return Card(
            color: myColor,
            semanticContainer: true,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            elevation: 5,
            margin: const EdgeInsets.all(10),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(myText, style: const TextStyle(fontSize: 50),),
            ),
          );
  }
}