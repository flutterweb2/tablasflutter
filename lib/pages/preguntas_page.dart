import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:game/pages/constants/factor_const.dart';
import 'package:game/pages/factor_page.dart';
import 'package:game/pages/widgets/cards_widgets.dart';
import 'package:game/pages/widgets/fallo_respuesta.dart';
import 'package:game/pages/widgets/respuestaok.dart';

class PreguntasPage extends StatefulWidget {
  int factor;
  PreguntasPage({super.key, required this.factor});

  @override
  State<PreguntasPage> createState() => _PreguntasPageState();
}

class _PreguntasPageState extends State<PreguntasPage> {
  String resultado = "RESULTADO";

  bool _isVisible = true;

  int respuesta = 0;
  int numx = 0;
  int ramdomRespuesta = 0;
  int ramdomUno = 0;
  int ramdomDos = 0;
  int ramdomTres = 0;
  var igualUser;
  bool? verificar;

  @override
  void initState() {
    //int factorx = int.parse(widget.factor);
    super.initState();
    //print(factorx);
    inicio();
  }

  final respuestaController = TextEditingController();

  void inicio() {
    setState(() {
      _isVisible = false;
      respuestaController.text = ""; //nuevo
      int factorx = widget.factor;
      numx = Random().nextInt(10) + 1;
      respuesta = numx * factorx;
      String numero = numx.toString();
      String factorm = factorx.toString();
      //igualUser = numero + "X" + factorm + "=";
      igualUser = "${numero}X$factorm=";
      if (kDebugMode) {
        print(igualUser);
      }
    });
  }

  Row cardRespuesta() {
    ramdomRespuesta = respuesta;
    ramdomUno = respuesta + 2;
    ramdomDos = respuesta - 4;
    ramdomTres = respuesta + 8;

    var cardNames = [ramdomRespuesta, ramdomUno, ramdomDos, ramdomTres];
    cardNames.shuffle();

    if (kDebugMode) {
      print(cardNames);
    }

    return Row(
      children: [
        GestureDetector(
          onTap: () async {
            respuestaController.text = cardNames[0].toString();
            comprobar();
            await Future.delayed(const Duration(seconds: 2));
            inicio();
          },
          child: MyCards(
            myColor: Colors.blue,
            myText: (cardNames[0].toString()),
          ),
        ),
        GestureDetector(
          onTap: () async {
            respuestaController.text = cardNames[1].toString();
            comprobar();
            await Future.delayed(const Duration(seconds: 2));
            inicio();
          },
          child: MyCards(
            myColor: Colors.orange,
            myText: (cardNames[1].toString()),
          ),
        ),
        GestureDetector(
          onTap: () async {
            respuestaController.text = cardNames[2].toString();
            comprobar();
            await Future.delayed(const Duration(seconds: 2));
            inicio();
          },
          child: MyCards(
            myColor: Colors.pink,
            myText: (cardNames[2].toString()),
          ),
        ),
        GestureDetector(
          onTap: () async {
            respuestaController.text = cardNames[3].toString();
            comprobar();
            await Future.delayed(const Duration(seconds: 2));
            inicio();
          },
          child: MyCards(
            myColor: Colors.yellow,
            myText: (cardNames[3].toString()),
          ),
        ),
      ],
    );
  }

  comprobar() {
    setState(() {
      int convertir = int.parse(respuestaController.text);
      verificar = convertir == respuesta;
      _isVisible = !_isVisible;
    });
  }

  MyRespuesta respuestaCorrecta() {
    return const MyRespuesta();
  }

  MyRespuestaFallo respuestaInCorrecta() {
    return const MyRespuestaFallo();
  }

  @override
  Widget build(BuildContext context) {
    var sizew = MediaQuery.of(context).size.width * 0.50;
    var sizeh = MediaQuery.of(context).size.height * 0.7;

    return Scaffold(
      body: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 202, 202, 202),
              borderRadius: BorderRadius.circular(30),
            ),
            width: sizew,
            height: sizeh,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Visibility(
                  visible: _isVisible,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      (verificar == true)
                          ? respuestaCorrecta()
                          : respuestaInCorrecta()
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Card(
                      color: const Color.fromARGB(255, 221, 235, 247),
                      semanticContainer: true,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      elevation: 5,
                      margin: const EdgeInsets.all(10),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          igualUser.toString(),
                          style: const TextStyle(fontSize: 50),
                        ),
                      ),
                    ),
                    MySizeBox(height: 20),
                    SizedBox(
                      width: 80,
                      child: TextFormField(
                        style: const TextStyle(fontSize: 50),
                        controller: respuestaController,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          hintText: "?",
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    cardRespuesta(),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const FactorPage(),
                      ),
                    );
                  },
                  child: const Text("Regresar"),
                ),                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
