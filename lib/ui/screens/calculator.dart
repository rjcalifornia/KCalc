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
      body: const Column(
        children: [
          SizedBox(
            height: 8,
          ),
          SwitchMode()
        ],
      ),
    ));
  }
}
