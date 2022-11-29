import 'package:flutter/material.dart';

class MyTextTitle extends StatelessWidget {
  const MyTextTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      "TABLAS DE MULTIPLICAR",
      style: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 40, color: Colors.black),
    );
  }
}

class MySizeBox extends StatelessWidget {
  double height;
  MySizeBox({super.key, required this.height});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
    );
  }
}
