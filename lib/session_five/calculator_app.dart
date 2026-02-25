import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculatorApp extends StatefulWidget {
  const CalculatorApp({super.key});

  @override
  State<CalculatorApp> createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  var userInput = "";
  var answer = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 50.0, right: 5),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Column(
                    children: [
                      Text(
                        userInput.toString(),
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                      Text(
                        answer.toString(),
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Row(
                    children: [
                      MyButton(
                        title: "AC",
                        color: Color(0xffa5a5a5),
                        onpress: () {
                          userInput = '';
                          answer = '';
                          setState(() {});
                        },
                      ),
                      MyButton(
                        title: "+/-",
                        color: Color(0xffa5a5a5),
                        onpress: () {
                          userInput += '+/-';
                          setState(() {});
                        },
                      ),
                      MyButton(
                        title: "%",
                        color: Color(0xffa5a5a5),
                        onpress: () {
                          userInput += '%';
                          setState(() {});
                        },
                      ),
                      MyButton(
                        title: "/",
                        color: Colors.orange,
                        onpress: () {
                          userInput += '/';
                          setState(() {});
                        },
                      ),
                    ],
                  ),

                  Row(
                    children: [
                      MyButton(
                        title: "7",
                        color: Color(0xffa5a5a5),
                        onpress: () {
                          userInput += '7';
                          setState(() {});
                        },
                      ),
                      MyButton(
                        title: "8",
                        color: Color(0xffa5a5a5),
                        onpress: () {
                          userInput += '8';
                          setState(() {});
                        },
                      ),
                      MyButton(
                        title: "9",
                        color: Color(0xffa5a5a5),
                        onpress: () {
                          userInput += '9';
                          setState(() {});
                        },
                      ),
                      MyButton(
                        title: "X",
                        color: Colors.orange,
                        onpress: () {
                          userInput += 'x';
                          setState(() {});
                        },
                      ),
                    ],
                  ),

                  Row(
                    children: [
                      MyButton(
                        title: "4",
                        color: Color(0xffa5a5a5),
                        onpress: () {
                          userInput += '4';
                          setState(() {});
                        },
                      ),
                      MyButton(
                        title: "5",
                        color: Color(0xffa5a5a5),
                        onpress: () {
                          userInput += '5';
                          setState(() {});
                        },
                      ),
                      MyButton(
                        title: "6",
                        color: Color(0xffa5a5a5),
                        onpress: () {
                          userInput += '6';
                          setState(() {});
                        },
                      ),
                      MyButton(
                        title: "-",
                        color: Colors.orange,
                        onpress: () {
                          userInput += '-';
                          setState(() {});
                        },
                      ),
                    ],
                  ),

                  Row(
                    children: [
                      MyButton(
                        title: "1",
                        color: Color(0xffa5a5a5),
                        onpress: () {
                          userInput += '1';
                          setState(() {});
                        },
                      ),
                      MyButton(
                        title: "2",
                        color: Color(0xffa5a5a5),
                        onpress: () {
                          userInput += '2';
                          setState(() {});
                        },
                      ),
                      MyButton(
                        title: "3",
                        color: Color(0xffa5a5a5),
                        onpress: () {
                          userInput += '3';
                          setState(() {});
                        },
                      ),
                      MyButton(
                        title: "+",
                        color: Colors.orange,
                        onpress: () {
                          userInput += '+';
                          setState(() {});
                        },
                      ),
                    ],
                  ),

                  Row(
                    children: [
                      MyButton(
                        title: "0",
                        color: Color(0xffa5a5a5),
                        onpress: () {
                          userInput += '0';
                          setState(() {});
                        },
                      ),
                      MyButton(
                        title: ".",
                        color: Color(0xffa5a5a5),
                        onpress: () {
                          userInput += '.';
                          setState(() {});
                        },
                      ),
                      MyButton(
                        title: "DEL",
                        color: Color(0xffa5a5a5),
                        onpress: () {
                          userInput = userInput.substring(
                            0,
                            userInput.length - 1,
                          );
                          setState(() {});
                        },
                      ),
                      MyButton(
                        title: "=",
                        color: Colors.orange,
                        onpress: () {
                          equalPress();
                          setState(() {});
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void equalPress() {
    String finalUserInput = userInput;
    finalUserInput = finalUserInput.replaceAll('x', '*');

    Parser p = Parser();
    Expression expression = p.parse(finalUserInput);
    ContextModel contextModel = ContextModel();
    double eval = expression.evaluate(EvaluationType.REAL, contextModel);
    answer = eval.toString();
  }
}

class MyButton extends StatelessWidget {
  String title;
  Color color;
  VoidCallback onpress;
  MyButton({
    super.key,
    required this.title,
    required this.color,
    required this.onpress,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpress,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(shape: BoxShape.circle, color: color),
          child: Center(
            child: Text(
              title,
              style: TextStyle(color: Colors.white, fontSize: 22),
            ),
          ),
        ),
      ),
    );
  }
}
