// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SwitchMode extends StatefulWidget {
  const SwitchMode({super.key});

  @override
  State<SwitchMode> createState() => _SwitchModeState();
}

class _SwitchModeState extends State<SwitchMode> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.24,
          height: MediaQuery.of(context).size.height * 0.06,
          decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color(0xffdde3ec),
                  blurRadius: 10,
                  spreadRadius: 4,
                  offset: Offset(0, 10),
                )
              ],
              color: Color(0xffecf0f3),
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              )),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {},
                child: const SizedBox(
                  height: 30,
                  child: Icon(
                    Icons.light_mode_outlined,
                    color: Color(0xff324056),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: const SizedBox(
                  height: 30,
                  child: Icon(
                    Icons.dark_mode_outlined,
                    color: Color(0xff324056),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
