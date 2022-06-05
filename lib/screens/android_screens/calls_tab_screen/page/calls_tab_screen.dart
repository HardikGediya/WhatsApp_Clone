import 'package:flutter/material.dart';
import 'package:outcaster4th_pro/models/android_models/android_model.dart';
import 'package:outcaster4th_pro/utils/color.dart';
import 'package:outcaster4th_pro/utils/textstyle.dart';

class CallTabScreen extends StatefulWidget {
  const CallTabScreen({Key? key}) : super(key: key);

  @override
  State<CallTabScreen> createState() => _CallTabScreenState();
}

class _CallTabScreenState extends State<CallTabScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView.builder(
        padding: const EdgeInsets.only(bottom: 100),
        itemBuilder: (context, i) {
          return Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.grey[300],
                      backgroundImage: NetworkImage('${callsData[i].img}'),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${callsData[i].name}',
                          style: nameStyle,
                        ),
                        Row(
                          children: [
                            (callsData[i].out) ? Text(
                              '↗',
                              style: TextStyle(
                                color: mainColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ),
                            ) : Text(
                              '↙',
                              style: TextStyle(
                                color: mainColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ),
                            ),
                            Text(
                              '${callsData[i].time}',
                              style: subNameStyle,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Icon(
                  Icons.call,
                  color: mainColor,
                ),
              ],
            ),
          );
        },
        itemCount: callsData.length,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: mainColor,
        child: const Icon(Icons.add_call),
      ),
    );
  }
}
