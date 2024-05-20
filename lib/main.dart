import 'package:flutter/material.dart';
import 'package:ubuntu_calculator/ui/screens/home.dart';
import 'package:window_manager/window_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await windowManager.ensureInitialized();

  WindowManager.instance.setMinimumSize(const Size(480, 720));
  WindowManager.instance.setMaximumSize(const Size(480, 720));

  runApp(const HomeScreen());
}
