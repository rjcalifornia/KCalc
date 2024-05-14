import 'package:flutter/material.dart';
import 'package:ubuntu_calculator/ui/components/button_helper.dart';
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
      backgroundColor: const Color(0xffecf0f3),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xffecf0f3),
        leading: const Icon(
          Icons.settings_outlined,
          color: Color(0xff324056),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 8,
          ),
          const SwitchMode(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buttonHelper(
                  'AC', const Color(0xffe0e8ee), () => buttonPressed('AC')),
              buttonHelper(
                  '%', const Color(0xffe0e8ee), () => buttonPressed('%')),
              buttonHelper(
                  '÷', const Color(0xffe0e8ee), () => buttonPressed('÷')),
              buttonHelper(
                  "×", const Color(0xffe0e8ee), () => buttonPressed('×')),
            ],
          ),
        ],
      ),
    ));
  }
}
