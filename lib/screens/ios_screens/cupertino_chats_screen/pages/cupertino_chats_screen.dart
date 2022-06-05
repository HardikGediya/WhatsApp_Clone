import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:outcaster4th_pro/models/ios_models/ios_model.dart';

import '../../../../utils/textstyle.dart';

import '../../../../models/android_models/android_model.dart';
import '../../../../models/ios_models/ios_model.dart';

class CupertinoChatsScreen extends StatefulWidget {
  const CupertinoChatsScreen({Key? key}) : super(key: key);

  @override
  State<CupertinoChatsScreen> createState() => _CupertinoChatsScreenState();
}

class _CupertinoChatsScreenState extends State<CupertinoChatsScreen> {
  get cupertinoMainColor => null;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Colors.grey[50],
      navigationBar: CupertinoNavigationBar(
        leading: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Text(
            'Edit',
            style: cupertinoBlueText,
          ),
        ),
        trailing: const Icon(
          CupertinoIcons.pencil_outline,
          color: Colors.blue,
          size: 25,
        ),
        middle: const Text(
          'Chats',
          style: TextStyle(fontSize: 19),
        ),
      ),
      child: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 17, right: 17, top: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Broadcast Lists',
                    style: cupertinoBlueText,
                  ),
                  Text(
                    'New Group',
                    style: cupertinoBlueText,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 5,),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey, width: 0.3)),
              height: 670,
              child: ListView.separated(
                padding: const EdgeInsets.only(
                    right: 20, left: 15, top: 10, bottom: 50),
                itemBuilder: (context, i) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            radius: 23,
                            backgroundColor: Colors.grey[300],
                            backgroundImage:
                                NetworkImage('${chatsData[i].img}'),
                          ),
                          const SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '${chatsData[i].name}',
                                style: cupertinoName,
                              ),
                              const SizedBox(height: 3),
                              Text(
                                '${cupChatsData[i].msg}',
                                style: cupertinoTime,
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            '${cupChatsData[i].time}',
                            style: cupertinoTime,
                          ),
                          Container(height: 20),
                        ],
                      ),
                    ],
                  );
                },
                separatorBuilder: (context, i) {
                  return  Divider(
                    color: Colors.grey.shade500,
                    height: 30,
                    indent: 60,
                  );
                },
                itemCount: cupCallsData.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
