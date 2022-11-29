import 'package:flutter/material.dart';

class MyRespuestaFallo extends StatelessWidget {
  const MyRespuestaFallo({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 245, 55, 80),
      semanticContainer: true,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 5,
      margin: const EdgeInsets.all(10),
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Text(
          "¡FALLO!",
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
      ),
    );
  }
}