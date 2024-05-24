import 'package:flutter/material.dart';

import 'package:ubuntu_calculator/ui/widgets/switch.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  @override
  Widget build(BuildContext context) {
    String equation = "0";
    String result = "0";
    String expression = "";
    double equationFontSize = 38.0;
    double resultFontSize = 48.0;

    buttonPressed(String buttonText) {}

    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color(0xff2c2c37),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xff2c2c37),
        leading: const Icon(
          Icons.menu_outlined,
          color: Color(0xfffafafa),
        ),
      ),
      body: Padding(
        padding: new EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(
              height: 8,
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
