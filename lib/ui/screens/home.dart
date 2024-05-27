import 'package:flutter/material.dart';
import 'package:KCalc/ui/screens/calculator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      theme: ThemeData(
        primaryColor: Colors.blueGrey.shade900,
      ),
      home: const CalculatorScreen(),
    );
  }
}
