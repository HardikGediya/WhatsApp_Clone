import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:outcaster4th_pro/screens/ios_screens/cupertino_chats_screen/pages/cupertino_chats_screen.dart';
import 'package:outcaster4th_pro/screens/ios_screens/cupertino_status_screen/pages/cupertino_status_screen.dart';

import '../../../../utils/var.dart';
import '../../cupertino_calls_screen/pages/cupertino_calls_screen.dart';
import '../../cupertino_camera_screen/pages/cupertino_camera_screen.dart';
import '../../cupertino_settins_screen/pages/cupertino_settings_screen.dart';

class CupertinoHomeScreen extends StatefulWidget {
  const CupertinoHomeScreen({Key? key}) : super(key: key);

  @override
  State<CupertinoHomeScreen> createState() => _CupertinoHomeScreenState();
}

class _CupertinoHomeScreenState extends State<CupertinoHomeScreen> {
  @override
  List<Widget> data = const [
    CupertinoStatusScreen(),
    CupertinoCallsScreen(),
    CupertinoCameraScreen(),
    CupertinoChatsScreen(),
    CupertinoSettingsScreen(),
  ];

  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            activeIcon: Icon(CupertinoIcons.circle_fill),
            icon: Icon(CupertinoIcons.circle),
            label: 'Status',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(CupertinoIcons.phone_solid),
            icon: Icon(CupertinoIcons.phone),
            label: 'Calls',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(CupertinoIcons.camera_fill),
            icon: Icon(CupertinoIcons.camera),
            label: 'Camera',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(CupertinoIcons.chat_bubble_2_fill),
            icon: Icon(CupertinoIcons.chat_bubble_2),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(CupertinoIcons.settings_solid),
            icon: Icon(CupertinoIcons.settings),
            label: 'Settings',
          ),
        ],
      ),
      tabBuilder: (context, index) {
        return CupertinoTabView(
          builder: (context) {
            return data[index];
          },
        );
      },
    );
  }
}
