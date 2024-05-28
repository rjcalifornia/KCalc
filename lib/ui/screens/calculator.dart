import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
import 'package:KCalc/ui/widgets/button_area.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String equation = "0";
  String result = "0";
  String expression = "";
  double equationFontSize = 38.0;
  double resultFontSize = 48.0;

  void buttonPressed(String buttonText) {
    //print(buttonText);
    String doesContainDecimal(dynamic result) {
      if (result.toString().contains('.')) {
        List<String> splitDecimal = result.toString().split('.');
        if (!(int.parse(splitDecimal[1]) > 0)) {
          return result = splitDecimal[0].toString();
        }
      }
      return result;
    }

    setState(() {
      if (buttonText == "AC") {
        equation = "0";
        result = "0";
      } else if (buttonText == "del") {
        equation = equation.substring(0, equation.length - 1);
        if (equation == "") {
          equation = "0";
        }
      } else if (buttonText == "+/-") {
        if (equation[0] != '-') {
          equation = '-$equation';
        } else {
          equation = equation.substring(1);
        }
      } else if (buttonText == "=") {
        expression = equation;
        expression = expression.replaceAll('×', '*');
        expression = expression.replaceAll('÷', '/');
        expression = expression.replaceAll('%', '%');

        try {
          Parser p = Parser();
          Expression exp = p.parse(expression);

          ContextModel cm = ContextModel();
          result = '${exp.evaluate(EvaluationType.REAL, cm)}';
          if (expression.contains('%')) {
            result = doesContainDecimal(result);
          }
        } catch (e) {
          result = "Error";
        }
      } else {
        if (equation == "0") {
          equation = buttonText;
        } else {
          equation = equation + buttonText;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color(0xff2c2c37),
      appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color(0xff2c2c37),
          leading: Builder(builder: (context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: const Icon(
                Icons.menu_outlined,
                color: Color(0xfffafafa),
              ),
            );
          })),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: const Text('About'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(result,
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                            color: Colors.white, fontSize: 50))),
                const SizedBox(width: 20),
              ],
            ),
            SizedBox(
              width: double.infinity,
              height: 120,
              child: Container(
                  alignment: Alignment.bottomRight,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text(
                          equation,
                          style: const TextStyle(
                            fontSize: 22,
                            color: Colors.white38,
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
            Container(
              alignment: Alignment.bottomRight,
              child: Wrap(
                children: [
                  IconButton(
                    icon: const Icon(Icons.backspace_outlined,
                        color: Color(0xffc14a51)),
                    onPressed: () {
                      buttonPressed('del');
                    },
                  ),
                ],
              ),
            ),
            ButtonArea(
              function: buttonPressed,
            ),
            const SizedBox(
              height: 8,
            ),
          ],
        ),
      ),
    ));
  }
}
