import 'package:flutter/material.dart';
import 'package:KCalc/ui/screens/calculator.dart';
import 'package:flutter/services.dart';
import 'package:window_manager/window_manager.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    List<Widget> bodyWidgets = [CalculatorScreen()];
    int index = 0;
    return SafeArea(
        child: Scaffold(
            backgroundColor: const Color(0xff2c2c37),
            appBar: AppBar(
                elevation: 0,
                actions: [
                  IconButton(
                    icon: const Icon(
                      Icons.close_outlined,
                      color: Color(0xfffafafa),
                    ),
                    tooltip: 'Close',
                    onPressed: () {
                      SystemChannels.platform
                          .invokeMethod('SystemNavigator.pop');
                    },
                  )
                ],
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
                    title: const Text('Basic'),
                    leading: GestureDetector(
                      child: const Icon(Icons.calculate_outlined),
                    ),
                    onTap: () {
                      setState(() {
                        index = 0;
                        Navigator.pop(context);
                      });
                    },
                  ),
                  ListTile(
                    title: const Text('Settings'),
                    leading: GestureDetector(
                      child: const Icon(Icons.settings_outlined),
                    ),
                    onTap: () {
                      setState(() {
                        Navigator.pop(context);
                      });
                    },
                  ),
                ],
              ),
            ),
            body: bodyWidgets[index]));
  }
}
