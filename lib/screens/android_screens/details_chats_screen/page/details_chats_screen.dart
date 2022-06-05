import 'package:flutter/material.dart';
import 'package:outcaster4th_pro/utils/color.dart';
import 'package:outcaster4th_pro/utils/textstyle.dart';

class ChatsDetailsScreen extends StatefulWidget {
  const ChatsDetailsScreen({Key? key}) : super(key: key);

  @override
  State<ChatsDetailsScreen> createState() => _ChatsDetailsScreenState();
}

class _ChatsDetailsScreenState extends State<ChatsDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    dynamic args = ModalRoute.of(context)!.settings.arguments;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: mainColor,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_rounded),
        ),
        title: Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundColor: Colors.grey[300],
              backgroundImage: NetworkImage('${args.img}'),
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('${args.name}'),
                Text('last seen ${args.time}',
                    style: const TextStyle(
                        fontSize: 14, fontWeight: FontWeight.w400)),
              ],
            ),
          ],
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(Icons.video_call_rounded),
          ),
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(Icons.call),
          ),
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/icons/bgwh.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(
            alignment: Alignment(0, 0.94),
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 47,
                    width: 310,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(right: 15,left: 15,bottom: 8,top: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: const [
                              Text(
                                '🙂',
                                style: TextStyle(fontSize: 20),
                              ),
                              SizedBox(width: 10),
                              Text(
                                'Message',
                                style: TextStyle(
                                  fontSize: 19,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(Icons.document_scanner,color: mainColor,),
                              const SizedBox(width: 15),
                              Icon(Icons.money,color: mainColor,),
                              const SizedBox(width: 15),
                              Icon(Icons.camera_alt,color: mainColor,),
                            ],
                          ),

                        ],
                      ),
                    ),
                  ),
                  Transform.scale(
                    scale: 0.9,
                    child: FloatingActionButton(
                      onPressed: () {},
                      backgroundColor: mainColor,
                      child: const Icon(
                        Icons.mic,
                        size: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
