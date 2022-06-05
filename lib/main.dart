import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:outcaster4th_pro/screens/android_screens/details_chats_screen/page/details_chats_screen.dart';
import 'package:outcaster4th_pro/screens/ios_screens/cupertino_home_screen/pages/cupertino_home_screen.dart';
import 'package:outcaster4th_pro/utils/var.dart';

import 'screens/android_screens/home_screen/page/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(milliseconds: 100), (timer) {
      setState(() {});
    });
  }


  @override
  Widget build(BuildContext context) {
    return (isIOS) ? CupertinoApp(
      debugShowCheckedModeBanner: false,
      theme: const CupertinoThemeData(
        brightness: Brightness.light,
      ),
      routes: {
        '/': (context) => const CupertinoHomeScreen(),
      },
    ) : MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const HomeScreen(),
        'ChatsDetailsScreen': (context) => const ChatsDetailsScreen(),
      },
    );
  }
}
