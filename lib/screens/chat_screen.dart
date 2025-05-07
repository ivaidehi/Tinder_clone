import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tinder_clone_app/styles/app_styles.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List chatNamesList = [
    "Luna Walter",
    "John Taylor",
    "Arina",
    "Louis",
    "Lily Tyson",
    "Tiya",
    "Victoria Jacob"
  ];

  List dpList = [
    'assets/img1.jpg',
    'assets/img7.jpg',
    'assets/img3.jpg',
    'assets/img6.jpg',
    'assets/img5.jpg',
    'assets/img2.jpg',
    'assets/img4.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppStyles.appBar,
        body: ListView(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 15,
                ),
                Stack(
                  children: [
                    Container(
                      width: double.maxFinite,
                      height: 55,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 12, horizontal: 15),
                      child: Text(
                        "Search",
                        style: TextStyle(color: Colors.black54),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "New Messages",
                    style: AppStyles.subHeadingStyle.copyWith(
                        color: Colors.red, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: chatNamesList.length,
                  itemBuilder: (context, index) {
                    var takeChatName = chatNamesList[index];
                    var takeDP = dpList[index];
                    return Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            // print("Tapped on : $index");
                            // Navigator.pushNamed(context, ,
                            //     arguments: {"index": index});
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Row(
                              children: [
                                Container(
                                  height: 55,
                                  width: 55,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                        image: AssetImage(takeDP),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                                SizedBox(width: 15,),
                                Text(takeChatName),
                              ],
                            ),
                          ),
                        ),
                        const Divider(
                          // Horizontal line after each name
                          thickness: 1,
                          color: Colors
                              .grey, // You can customize the color and thickness
                        ),
                      ],
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
