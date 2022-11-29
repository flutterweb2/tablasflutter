import 'package:flutter/material.dart';
import 'package:game/pages/constants/factor_const.dart';
import 'package:game/pages/widgets/factor_widget.dart';

class FactorPage extends StatefulWidget {
  const FactorPage({super.key});

  @override
  State<FactorPage> createState() => _FactorPageState();
}

class _FactorPageState extends State<FactorPage> {
  @override
  Widget build(BuildContext context) {
    var sizew = MediaQuery.of(context).size.width * 0.63;
    var sizeh = MediaQuery.of(context).size.height * 0.7;
    return Scaffold(
      body: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 202, 202, 202),
              borderRadius: BorderRadius.circular(30),
            ),
            width: sizew,
            height: sizeh,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(                 
                  children: const [
                    SizedBox(
                      width: 100,
                      height: 100,
                      child: Image(
                        image: AssetImage('assets/images/avatar.png'),
                      ),
                    )
                  ],
                ),
                const MyTextTitle(),
                MySizeBox(height: 35),
                SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      MyGesturePress(
                        controller: TextEditingController(
                          text: "1",
                        ),
                        color: Colors.blue,
                        numText: "1",
                      ),
                      MyGesturePress(
                        controller: TextEditingController(
                          text: "2",
                        ),
                        color: Colors.pink,
                        numText: "2",
                      ),
                      MyGesturePress(
                        controller: TextEditingController(
                          text: "3",
                        ),
                        color: Colors.yellow,
                        numText: "3",
                      ),
                      MyGesturePress(
                        controller: TextEditingController(
                          text: "4",
                        ),
                        color: Colors.green,
                        numText: "4",
                      ),
                      MyGesturePress(
                        controller: TextEditingController(
                          text: "5",
                        ),
                        color: Colors.purple,
                        numText: "5",
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    MyGesturePress(
                      controller: TextEditingController(
                        text: "6",
                      ),
                      color: Colors.orange,
                      numText: "6",
                    ),
                    MyGesturePress(
                      controller: TextEditingController(
                        text: "7",
                      ),
                      color: Colors.brown,
                      numText: "7",
                    ),
                    MyGesturePress(
                      controller: TextEditingController(
                        text: "8",
                      ),
                      color: Colors.pinkAccent,
                      numText: "8",
                    ),
                    MyGesturePress(
                      controller: TextEditingController(
                        text: "9",
                      ),
                      color: Colors.blueAccent,
                      numText: "9",
                    ),
                    MyGesturePress(
                      controller: TextEditingController(
                        text: "10",
                      ),
                      color: Colors.red,
                      numText: "10",
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
