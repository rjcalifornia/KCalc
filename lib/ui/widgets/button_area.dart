import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:KCalc/ui/components/button_helper.dart';
import 'package:KCalc/ui/utils/functions.dart';

class ButtonArea extends StatefulWidget {
  const ButtonArea({super.key, required this.function});

  final dynamic function;
  @override
  State<ButtonArea> createState() => _ButtonAreaState();
}

class _ButtonAreaState extends State<ButtonArea> {
  final FocusNode _focusNode = FocusNode();
  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

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
              child: KeyboardListener(
                focusNode: _focusNode,
                autofocus: true,
                onKeyEvent: (event) {
                  if (event is KeyDownEvent && event.character != null) {
                    widget.function(event.character);
                  }
                },
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
                            () => widget.function('AC')),
                        buttonHelper(
                            '+/-',
                            const Color(0xff23252d),
                            const Color(0xff02c984),
                            () => widget.function('+/-')),
                        buttonHelper(
                            '%',
                            const Color(0xff23252d),
                            const Color(0xff02c984),
                            () => widget.function('%')),
                        buttonHelper(
                            "÷",
                            const Color(0xff23252d),
                            const Color(0xffc14a51),
                            () => widget.function('÷')),
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
                            () => widget.function('7')),
                        buttonHelper(
                            '8',
                            const Color(0xff23252d),
                            const Color(0xffffffff),
                            () => widget.function('8')),
                        buttonHelper(
                            '9',
                            const Color(0xff23252d),
                            const Color(0xffffffff),
                            () => widget.function('9')),
                        buttonHelper(
                            "*",
                            const Color(0xff23252d),
                            const Color(0xffc14a51),
                            () => widget.function('*')),
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
                            () => widget.function('4')),
                        buttonHelper(
                            '5',
                            const Color(0xff23252d),
                            const Color(0xffffffff),
                            () => widget.function('5')),
                        buttonHelper(
                            '6',
                            const Color(0xff23252d),
                            const Color(0xffffffff),
                            () => widget.function('6')),
                        buttonHelper(
                            "-",
                            const Color(0xff23252d),
                            const Color(0xffc14a51),
                            () => widget.function('-')),
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
                            () => widget.function('1')),
                        buttonHelper(
                            '2',
                            const Color(0xff23252d),
                            const Color(0xffffffff),
                            () => widget.function('2')),
                        buttonHelper(
                            '3',
                            const Color(0xff23252d),
                            const Color(0xffffffff),
                            () => widget.function('3')),
                        buttonHelper(
                            "+",
                            const Color(0xff23252d),
                            const Color(0xffc14a51),
                            () => widget.function('+')),
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
                            () => widget.function('0')),
                        buttonHelper(
                            '.',
                            const Color(0xff23252d),
                            const Color(0xffffffff),
                            () => widget.function('.')),
                        buttonHelper(
                            "=",
                            const Color(0xff23252d),
                            const Color(0xffc14a51),
                            () => widget.function('=')),
                      ],
                    )
                  ],
                ),
              ),
            )),
      ],
    ));
  }
}
