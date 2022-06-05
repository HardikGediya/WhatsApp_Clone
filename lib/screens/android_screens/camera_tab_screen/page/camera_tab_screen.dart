import 'package:flutter/material.dart';

import '../../../../utils/var.dart';

class CameraTabScreen extends StatefulWidget {
  const CameraTabScreen({Key? key}) : super(key: key);

  @override
  State<CameraTabScreen> createState() => _CameraTabScreenState();
}

class _CameraTabScreenState extends State<CameraTabScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Click to Convert Platform',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 40,),
            GestureDetector(
              onTap: (){
                setState(() {
                  isIOS = !isIOS;
                });
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 0),
                child: Transform.scale(scale : 1,child: Image.asset('assets/icons/ios.png',color: Colors.green,)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
