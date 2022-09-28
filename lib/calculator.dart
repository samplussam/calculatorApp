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
      onPressed: () => {calculate(btnText)},
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
              children: [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    text,
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Colors.white, fontSize: 80),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              numButton("7", Colors.green, Colors.black),
              numButton("8", Colors.green, Colors.black),
              numButton("9", Colors.green, Colors.black),
              numButton("X", Colors.lightGreen, Colors.black),
            ]),
            SizedBox(height: 10),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              numButton("4", Colors.green, Colors.black),
              numButton("5", Colors.green, Colors.black),
              numButton("6", Colors.green, Colors.black),
              numButton("-", Colors.lightGreen, Colors.black),
            ]),
            SizedBox(height: 10),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              numButton("1", Colors.green, Colors.black),
              numButton("2", Colors.green, Colors.black),
              numButton("3", Colors.green, Colors.black),
              numButton("+", Colors.lightGreen, Colors.black),
            ]),
            SizedBox(height: 10),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              numButton("0", Colors.green, Colors.black),
              numButton("C", Colors.green, Colors.black),
              numButton("=", Colors.green, Colors.black),
              numButton("/", Colors.lightGreen, Colors.black),
            ]),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }

  //Calculator Logic
  int firstNumber = 0;
  int secondNumber = 0;
  String result = "";
  String text = "";
  String operation = "";

  void calculate(String btnText) {
    if (btnText == "C") {
      result = "";
      text = "";
      firstNumber = 0;
      secondNumber = 0;
    } else if (btnText == "/" ||
        btnText == "X" ||
        btnText == "-" ||
        btnText == "+") {
      firstNumber = int.parse(text);
      result = "";
      operation = btnText;
    } else if (btnText == "=") {
      secondNumber = int.parse(text);
      if (operation == "+") {
        result = (firstNumber + secondNumber).toString();
      }
      if (operation == "-") {
        result = (firstNumber - secondNumber).toString();
      }
      if (operation == "X") {
        result = (firstNumber * secondNumber).toString();
      }
      if (operation == "/") {
        result = (firstNumber / secondNumber).toString();
      }
    } else {
      result = int.parse(text + btnText).toString();
    }

    setState(() {
      text = result;
    });
  }
}
