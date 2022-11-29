import 'package:flutter/material.dart';
import 'package:game/pages/preguntas_page.dart';

class MyGesturePress extends StatelessWidget {
  TextEditingController controller;
  Color color;
  String numText;
  MyGesturePress(
      {super.key,
      required this.controller,
      required this.color,
      required this.numText});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //factorController.text = factorController.text;
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                PreguntasPage(factor: int.parse(controller.text)),
          ),
        );
      },
      child: SizedBox(
        height: 100,
        width: 100,
        child: Card(
          color: color,
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          elevation: 5,
          margin: const EdgeInsets.all(10),
          child: Center(
            child: Text(
              numText,
              style: const TextStyle(color: Colors.white, fontSize: 50),
            ),
          ),
        ),
      ),
    );
  }
}
