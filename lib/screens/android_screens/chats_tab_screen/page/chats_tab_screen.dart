import 'package:flutter/material.dart';
import 'package:outcaster4th_pro/models/android_models/android_model.dart';
import 'package:outcaster4th_pro/utils/color.dart';
import 'package:outcaster4th_pro/utils/textstyle.dart';

class ChatsTabScreen extends StatefulWidget {
  const ChatsTabScreen({Key? key}) : super(key: key);

  @override
  State<ChatsTabScreen> createState() => _ChatsTabScreenState();
}

class _ChatsTabScreenState extends State<ChatsTabScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView.builder(
        padding: const EdgeInsets.only(bottom: 100),
        itemBuilder: (context,i){
          return InkWell(
            onTap: (){
              Navigator.of(context).pushNamed('ChatsDetailsScreen',arguments: chatsData[i]);
            },
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.grey[300],
                        backgroundImage: NetworkImage('${chatsData[i].img}'),
                      ),
                      const SizedBox(width: 20,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('${chatsData[i].name}',style: nameStyle,),
                          const SizedBox(height: 5),
                          Text('${chatsData[i].subTitle}',style: subNameStyle,),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('${chatsData[i].time}',style: timeStyle,),
                      Container(height: 30,),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: chatsData.length,
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: mainColor,
        child: const Icon(Icons.chat),
      ),
    );
  }
}
