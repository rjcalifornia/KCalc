import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';

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
    final Uri url =
        Uri.parse('https://github.com/rjcalifornia/KCalc/blob/master/LICENSE');
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
            child: ExpansionTile(
              title: const Text(
                'KCalc',
                style: TextStyle(
                    color: Color(0xfffafafa), fontWeight: FontWeight.w600),
              ),
              iconColor: const Color(0xfffafafa),
              collapsedIconColor: Color(0xfffafafa),
              children: [
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'KCalc Basic Calculator',
                  style: TextStyle(color: Color(0xfffafafa)),
                ),
                const SizedBox(
                  height: 8,
                ),
                Link(
                  uri: url,
                  target: LinkTarget.blank,
                  builder: (BuildContext ctx, FollowLink? openLink) {
                    return TextButton.icon(
                      onPressed: openLink,
                      label: const Text(
                        'Read the license',
                        style: TextStyle(color: Color(0xfffafafa)),
                      ),
                      icon: const Icon(
                        Icons.book_outlined,
                        color: Color(0xfffafafa),
                      ),
                    );
                  },
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
