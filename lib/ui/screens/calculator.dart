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
      backgroundColor: const Color(0xff2c2c37),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xff2c2c37),
        leading: const Icon(
          Icons.settings_outlined,
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
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0),
                      child: Wrap(
                        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        alignment: WrapAlignment.spaceAround,
                        spacing: 18,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              buttonHelper(
                                  'AC',
                                  const Color(0xff23252d),
                                  const Color(0xff02c984),
                                  () => buttonPressed('AC')),
                              buttonHelper(
                                  '+/-',
                                  const Color(0xff23252d),
                                  const Color(0xff02c984),
                                  () => buttonPressed('+/-')),
                              buttonHelper(
                                  '%',
                                  const Color(0xff23252d),
                                  const Color(0xff02c984),
                                  () => buttonPressed('%')),
                              buttonHelper(
                                  "÷",
                                  const Color(0xff23252d),
                                  const Color(0xffc14a51),
                                  () => buttonPressed('÷')),
                            ],
                          ),
                          const SizedBox(
                            height: 18,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              buttonHelper(
                                  '7',
                                  const Color(0xff23252d),
                                  const Color(0xffffffff),
                                  () => buttonPressed('7')),
                              buttonHelper(
                                  '8',
                                  const Color(0xff23252d),
                                  const Color(0xffffffff),
                                  () => buttonPressed('8')),
                              buttonHelper(
                                  '9',
                                  const Color(0xff23252d),
                                  const Color(0xffffffff),
                                  () => buttonPressed('9')),
                              buttonHelper(
                                  "*",
                                  const Color(0xff23252d),
                                  const Color(0xffc14a51),
                                  () => buttonPressed('*')),
                            ],
                          ),
                          const SizedBox(
                            height: 18,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              buttonHelper(
                                  '4',
                                  const Color(0xff23252d),
                                  const Color(0xffffffff),
                                  () => buttonPressed('4')),
                              buttonHelper(
                                  '5',
                                  const Color(0xff23252d),
                                  const Color(0xffffffff),
                                  () => buttonPressed('5')),
                              buttonHelper(
                                  '6',
                                  const Color(0xff23252d),
                                  const Color(0xffffffff),
                                  () => buttonPressed('6')),
                              buttonHelper(
                                  "-",
                                  const Color(0xff23252d),
                                  const Color(0xffc14a51),
                                  () => buttonPressed('-')),
                            ],
                          ),
                          const SizedBox(
                            height: 18,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              buttonHelper(
                                  '1',
                                  const Color(0xff23252d),
                                  const Color(0xffffffff),
                                  () => buttonPressed('4')),
                              buttonHelper(
                                  '2',
                                  const Color(0xff23252d),
                                  const Color(0xffffffff),
                                  () => buttonPressed('5')),
                              buttonHelper(
                                  '3',
                                  const Color(0xff23252d),
                                  const Color(0xffffffff),
                                  () => buttonPressed('6')),
                              buttonHelper(
                                  "+",
                                  const Color(0xff23252d),
                                  const Color(0xffc14a51),
                                  () => buttonPressed('+')),
                            ],
                          ),
                          const SizedBox(
                            height: 18,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const SizedBox(
                                width: 75,
                              ),
                              buttonHelper(
                                  '0',
                                  const Color(0xff23252d),
                                  const Color(0xffffffff),
                                  () => buttonPressed('0')),
                              buttonHelper(
                                  '.',
                                  const Color(0xff23252d),
                                  const Color(0xffffffff),
                                  () => buttonPressed('.')),
                              buttonHelper(
                                  "=",
                                  const Color(0xff23252d),
                                  const Color(0xffc14a51),
                                  () => buttonPressed('=')),
                            ],
                          )
                        ],
                      ),
                    ))
              ],
            )),
            const SizedBox(
              height: 8,
            ),
          ],
        ),
      ),
    ));
  }
}
