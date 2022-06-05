import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:outcaster4th_pro/utils/textstyle.dart';

import '../../../../models/android_models/android_model.dart';
import '../../../../utils/color.dart';

class CupertinoStatusScreen extends StatefulWidget {
  const CupertinoStatusScreen({Key? key}) : super(key: key);

  @override
  State<CupertinoStatusScreen> createState() => _CupertinoStatusScreenState();
}

class _CupertinoStatusScreenState extends State<CupertinoStatusScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Colors.grey[50],
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Text(
                'Privacy',
                style: cupertinoBlueText,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'Status',
                style: cupertinoHeadings,
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: 70,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey, width: 0.3)),
              padding: const EdgeInsets.only(right: 15, left: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQShihMNggQw8xIQnEXUDRWA2yImD76ZAcvPQ&usqp=CAU'),
                        radius: 25,
                      ),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'My Status',
                            style: cupertinoName,
                          ),
                          const SizedBox(height: 3),
                          Text(
                            'Add to my status',
                            style: cupertinoTime,
                          ),
                        ],
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 36,
                        width: 36,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          shape: BoxShape.circle,
                        ),
                        alignment: Alignment.center,
                        child: Icon(CupertinoIcons.camera_fill,
                            color: cupertinoMainColor, size: 19),
                      ),
                      const SizedBox(width: 15),
                      Container(
                        height: 36,
                        width: 36,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          shape: BoxShape.circle,
                        ),
                        alignment: Alignment.center,
                        child: Icon(CupertinoIcons.pen,
                            color: cupertinoMainColor, size: 20),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Text(
                'RECENT UPDATES',
                style: cupertinoTime,
              ),
            ),
            const SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey, width: 0.3)),
              height: 485,
              child: ListView.separated(
                padding: const EdgeInsets.only(right: 20,left: 15,top: 10,bottom: 50),
                itemBuilder: (context,i){
                  return  Row(
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                           CircleAvatar(
                            radius: 29,
                            backgroundColor: cupertinoMainColor,
                          ),
                          const CircleAvatar(
                            radius: 27,
                            backgroundColor: Colors.white,
                          ),
                          CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.grey[300],
                            backgroundImage:
                            NetworkImage('${statusData[i+1].img}'),
                          ),
                        ],
                      ),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '${statusData[i+1].name}',
                            style: cupertinoName,
                          ),
                          const SizedBox(height: 3),
                          Text(
                            '${statusData[i+1].time}',
                            style: cupertinoTime,
                          ),
                        ],
                      ),
                    ],
                  );
                },
                separatorBuilder: (context,i){
                  return const Divider(
                    height: 25,
                    indent: 60,
                  );
                },
                itemCount: statusData.length - 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
