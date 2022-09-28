// ignore_for_file: prefer_const_constructors

import 'package:calculator/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  Widget numButton(String btnText, Color btnColour, Color txtColour) {
    return ElevatedButton(
      onPressed: () => {},
      style: ElevatedButton.styleFrom(
        fixedSize: Size(70, 70),
        backgroundColor: btnColour,
        shape: CircleBorder(),
      ),
      child: Text(
        btnText,
        style: TextStyle(fontSize: 25, color: txtColour),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Calculator"),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    "0",
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Colors.white, fontSize: 80),
                  ),
                ),
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              numButton("C", Colors.green, Colors.black),
              numButton("+/-", Colors.green, Colors.black),
              numButton("%", Colors.green, Colors.black),
              numButton("/", Colors.lightGreen, Colors.black),
            ]),
            SizedBox(height: 10),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              numButton("7", Colors.greenAccent, Colors.black),
              numButton("8", Colors.greenAccent, Colors.black),
              numButton("9", Colors.greenAccent, Colors.black),
              numButton("X", Colors.lightGreen, Colors.black),
            ]),
            SizedBox(height: 10),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              numButton("4", Colors.greenAccent, Colors.black),
              numButton("5", Colors.greenAccent, Colors.black),
              numButton("6", Colors.greenAccent, Colors.black),
              numButton("-", Colors.lightGreen, Colors.black),
            ]),
            SizedBox(height: 10),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              numButton("1", Colors.greenAccent, Colors.black),
              numButton("2", Colors.greenAccent, Colors.black),
              numButton("3", Colors.greenAccent, Colors.black),
              numButton("+", Colors.lightGreen, Colors.black),
            ]),
            SizedBox(height: 10),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              ElevatedButton(
                onPressed: (() => {}),
                style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(),
                  backgroundColor: (Colors.lightGreenAccent),
                ),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(55, 12, 55, 12),
                  child: Text(
                    "0",
                    style: TextStyle(fontSize: 35, color: Colors.black),
                  ),
                ),
              ),
              numButton(".", Colors.greenAccent, Colors.black),
              numButton("=", Colors.lightGreen, Colors.black),
            ]),
          ],
        ),
      ),
    );
  }
}
