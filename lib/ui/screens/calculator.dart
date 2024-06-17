import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
      } else if (buttonText == "<") {
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
          double evalResult = exp.evaluate(EvaluationType.REAL, cm);
          if (evalResult.isInfinite) {
            result = "Division by zero";
            customDialog(context, 'Error: Division by zero');
          }

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
  void initState() {
    super.initState();
  }

  static customDialog(context, loadingText) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Warning'),
            content: Text(
              loadingText,
              style: Theme.of(context).textTheme.labelLarge,
            ),
            actions: [
              TextButton(
                style: TextButton.styleFrom(
                  textStyle: Theme.of(context).textTheme.labelLarge,
                ),
                child: const Text(
                  'Close',
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 105,
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
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SelectableText(result,
                      textAlign: TextAlign.left,
                      style:
                          const TextStyle(color: Colors.white, fontSize: 50))),
              const SizedBox(width: 36),
            ],
          ),
          Container(
            alignment: Alignment.bottomRight,
            child: Wrap(
              children: [
                IconButton(
                  icon: const Icon(Icons.backspace_outlined,
                      color: Color(0xffc14a51)),
                  onPressed: () {
                    buttonPressed('<');
                  },
                ),
                const SizedBox(
                  width: 34,
                )
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
    );
  }
}
