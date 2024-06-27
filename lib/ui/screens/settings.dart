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

    final Uri freepik = Uri.parse('https://www.flaticon.com/authors/freepik');
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
                .headlineSmall!
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
              collapsedIconColor: const Color(0xfffafafa),
              children: [
                const SizedBox(
                  height: 30,
                ),
                Image.asset(
                  'assets/keys.png',
                  height: 120,
                ),
                const SizedBox(
                  height: 18,
                ),
                const Text(
                  'KCalc Basic Calculator',
                  style: TextStyle(color: Color(0xfffafafa)),
                ),
                const Text(
                  '07.06.2024.001',
                  style: TextStyle(
                      color: Color(0xfffafafa), fontWeight: FontWeight.bold),
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
                const SizedBox(
                  height: 4,
                ),
                Link(
                  uri: freepik,
                  target: LinkTarget.blank,
                  builder: (BuildContext ctx, FollowLink? openLink) {
                    return TextButton.icon(
                      onPressed: openLink,
                      label: const Text(
                        'Icons by Freepik',
                        style: TextStyle(color: Color(0xfffafafa)),
                      ),
                      icon: const Icon(
                        Icons.web_asset_outlined,
                        color: Color(0xfffafafa),
                      ),
                    );
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'This program is free software; you can redistribute it and/or modify it',
                  style: TextStyle(color: Color(0xfffafafa), fontSize: 10),
                ),
                const Text(
                  'under the terms of the GNU General Public License as published by',
                  style: TextStyle(color: Color(0xfffafafa), fontSize: 10),
                ),
                const Text(
                  'the Free Software Foundation; either version 2 of the License,',
                  style: TextStyle(color: Color(0xfffafafa), fontSize: 10),
                ),
                const Text(
                  'or (at your option) any later version',
                  style: TextStyle(color: Color(0xfffafafa), fontSize: 10),
                ),
                const SizedBox(
                  height: 12,
                ),
                const Text(
                  'This program is distributed in the hope that it will be useful,',
                  style: TextStyle(color: Color(0xfffafafa), fontSize: 10),
                ),
                const Text(
                  'but WITHOUT ANY WARRANTY; without even the implied warranty',
                  style: TextStyle(color: Color(0xfffafafa), fontSize: 10),
                ),
                const Text(
                  'of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.',
                  style: TextStyle(color: Color(0xfffafafa), fontSize: 10),
                ),
                const SizedBox(
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
