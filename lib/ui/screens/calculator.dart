import 'package:flutter/material.dart';
import 'package:ubuntu_calculator/ui/widgets/button_area.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  @override
  Widget build(BuildContext context) {
    const equation = "0";
    String result = "0";
    String expression = "";
    double equationFontSize = 38.0;
    double resultFontSize = 48.0;

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
        padding: new EdgeInsets.all(40),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    equation,
                    style: TextStyle(
                      fontSize: 60,
                      color: Colors.white38,
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.backspace_outlined,
                      color: Color(0xffc14a51)),
                  onPressed: () {},
                ),
                const SizedBox(
                  width: 30,
                )
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            ButtonArea(),
            const SizedBox(
              height: 8,
            ),
          ],
        ),
      ),
    ));
  }
}
