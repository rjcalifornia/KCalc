import 'package:flutter/material.dart';

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
          Icons.settings,
          color: Color(0xff697788),
        ),
      ),
      body: Column(),
    ));
  }
}
