import 'package:flutter/material.dart';
import 'package:outcaster4th_pro/screens/android_screens/calls_tab_screen/page/calls_tab_screen.dart';
import 'package:outcaster4th_pro/screens/android_screens/camera_tab_screen/page/camera_tab_screen.dart';
import 'package:outcaster4th_pro/screens/android_screens/chats_tab_screen/page/chats_tab_screen.dart';
import 'package:outcaster4th_pro/screens/android_screens/status_tab_screen/page/status_tab_screen.dart';
import 'package:outcaster4th_pro/utils/color.dart';
import 'package:outcaster4th_pro/utils/string.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {

    double orjWidth = MediaQuery.of(context).size.width;
    double cameraWidth = orjWidth/24;
    double yourWidth = (orjWidth - cameraWidth)/5;
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          elevation: 3,
          backgroundColor: mainColor,
          title: Text(
            whatsApp,
            style: const TextStyle(fontWeight: FontWeight.w500),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 15),
              child: Icon(Icons.search),
            ),
            Padding(
              padding: EdgeInsets.only(right: 15),
              child: Icon(Icons.more_vert),
            ),
          ],
          bottom: TabBar(
            indicatorColor: Colors.white,
            indicatorWeight: 3,
            labelPadding: EdgeInsets.symmetric(horizontal:(orjWidth - ( cameraWidth + yourWidth*3))/8),
            isScrollable: true,
            labelStyle: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500
            ),

            tabs: <Widget>[
              SizedBox(
                child: const Tab(icon: Icon(Icons.camera_alt)),
                width: cameraWidth,
              ),
              SizedBox(
                child:  Tab(
                  text: chats,
                ),
                width: yourWidth,
              ),
              SizedBox(
                child:  Tab(
                  text: status,
                ),
                width: yourWidth,
              ),
              SizedBox(
                child:  Tab(
                  text: calls,
                ),
                width: yourWidth,
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            CameraTabScreen(),
            ChatsTabScreen(),
            StatusTabScreen(),
            CallTabScreen(),
          ],
        ),
      ),
    );
  }
}
