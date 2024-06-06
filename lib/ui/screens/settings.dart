import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Settings',
            style: Theme.of(context)
                .textTheme
                .displaySmall!
                .copyWith(color: const Color(0xfffafafa)),
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            'About',
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(color: const Color(0xfffafafa)),
          ),
          const SizedBox(
            height: 10,
          ),
          Card(
            color: Colors.blueGrey.shade900,
            child: const ExpansionTile(
              title: Text(
                'KCalc',
                style: TextStyle(
                    color: Color(0xfffafafa), fontWeight: FontWeight.w600),
              ),
              children: [
                SizedBox(
                  height: 30,
                ),
                Text(
                  'KCalc Basic Calculator',
                  style: TextStyle(color: Color(0xfffafafa)),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
