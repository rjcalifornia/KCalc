import 'package:flutter/material.dart';
import 'package:ubuntu_calculator/ui/components/button_helper.dart';
import 'package:ubuntu_calculator/ui/utils/functions.dart';

class ButtonArea extends StatefulWidget {
  const ButtonArea({super.key});

  @override
  State<ButtonArea> createState() => _ButtonAreaState();
}

class _ButtonAreaState extends State<ButtonArea> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
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
                          () => Functions().buttonPressed('AC')),
                      buttonHelper(
                          '+/-',
                          const Color(0xff23252d),
                          const Color(0xff02c984),
                          () => Functions().buttonPressed('+/-')),
                      buttonHelper(
                          '%',
                          const Color(0xff23252d),
                          const Color(0xff02c984),
                          () => Functions().buttonPressed('%')),
                      buttonHelper(
                          "÷",
                          const Color(0xff23252d),
                          const Color(0xffc14a51),
                          () => Functions().buttonPressed('÷')),
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
                          () => Functions().buttonPressed('7')),
                      buttonHelper(
                          '8',
                          const Color(0xff23252d),
                          const Color(0xffffffff),
                          () => Functions().buttonPressed('8')),
                      buttonHelper(
                          '9',
                          const Color(0xff23252d),
                          const Color(0xffffffff),
                          () => Functions().buttonPressed('9')),
                      buttonHelper(
                          "*",
                          const Color(0xff23252d),
                          const Color(0xffc14a51),
                          () => Functions().buttonPressed('*')),
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
                          () => Functions().buttonPressed('4')),
                      buttonHelper(
                          '5',
                          const Color(0xff23252d),
                          const Color(0xffffffff),
                          () => Functions().buttonPressed('5')),
                      buttonHelper(
                          '6',
                          const Color(0xff23252d),
                          const Color(0xffffffff),
                          () => Functions().buttonPressed('6')),
                      buttonHelper(
                          "-",
                          const Color(0xff23252d),
                          const Color(0xffc14a51),
                          () => Functions().buttonPressed('-')),
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
                          () => Functions().buttonPressed('4')),
                      buttonHelper(
                          '2',
                          const Color(0xff23252d),
                          const Color(0xffffffff),
                          () => Functions().buttonPressed('5')),
                      buttonHelper(
                          '3',
                          const Color(0xff23252d),
                          const Color(0xffffffff),
                          () => Functions().buttonPressed('6')),
                      buttonHelper(
                          "+",
                          const Color(0xff23252d),
                          const Color(0xffc14a51),
                          () => Functions().buttonPressed('+')),
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
                          () => Functions().buttonPressed('0')),
                      buttonHelper(
                          '.',
                          const Color(0xff23252d),
                          const Color(0xffffffff),
                          () => Functions().buttonPressed('.')),
                      buttonHelper(
                          "=",
                          const Color(0xff23252d),
                          const Color(0xffc14a51),
                          () => Functions().buttonPressed('=')),
                    ],
                  )
                ],
              ),
            ))
      ],
    ));
  }
}
