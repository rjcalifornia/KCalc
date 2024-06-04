import 'package:KCalc/ui/screens/settings.dart';
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
  int currentIndex = 0;
  final List<Widget> screens = [
    const CalculatorScreen(),
    const SettingsScreen()
  ];

  void onItemTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors

    return SafeArea(
        child: Scaffold(
            backgroundColor: const Color(0xff2c2c37),
            appBar: AppBar(
                flexibleSpace: GestureDetector(
                  onLongPressDown: (details) {
                    WindowManager.instance.startDragging();
                  },
                ),
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
                  const SizedBox(
                    height: 60,
                  ),
                  ListTile(
                    title: const Text('Basic'),
                    leading: GestureDetector(
                      child: const Icon(Icons.calculate_outlined),
                    ),
                    onTap: () {
                      onItemTapped(0);
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    title: const Text('Settings'),
                    leading: GestureDetector(
                      child: const Icon(Icons.settings_outlined),
                    ),
                    onTap: () {
                      onItemTapped(1);
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
            body: screens[currentIndex]));
  }
}
