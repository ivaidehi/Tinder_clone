import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:tinder_clone_app/styles/app_styles.dart';

class SwipeScreen extends StatefulWidget {
  const SwipeScreen({super.key});

  @override
  State<SwipeScreen> createState() => _SwipeScreenState();
}

class _SwipeScreenState extends State<SwipeScreen> {
  List<String> usersImagesList = [
    'assets/img1.jpg',
    'assets/img7.jpg',
    'assets/img6.jpg',
    'assets/img4.jpg',
    'assets/img5.jpg'
  ];

  List<String> userNames = ["Tiya", "Arina", "Elsa", "Lily", "Luna"];
  List<int> userAges = [23, 25, 22, 20, 24];
  List<String> onlineStatus = [
    "Online",
    "Recently Online",
    "Online",
    "Online",
    "Recently Online"
  ];

  bool showHeart = false;
  bool showCross = false;

  final CardSwiperController controller = CardSwiperController();

  int currentIndex = 0;

  void goToPreviousImage() {
    if (currentIndex > 0) {
      currentIndex--; // Decrease the index to go to the previous card
      controller.moveTo(currentIndex); // Jump to the previous card
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 20),
      decoration: AppStyles.circleButtonStyle,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppStyles.appBar,
        body: SizedBox(
          height: 580,
          // padding: const EdgeInsets.symmetric(vertical: 5),
          child: Column(
            children: [
              Expanded(
                child: CardSwiper(
                  controller: controller,
                  cardBuilder: (BuildContext context, int i, int x, int y) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          // User Image
                          Image.asset(
                            usersImagesList[i],
                            fit: BoxFit.cover,
                          ),
                          // Gradient Overlay
                          Container(
                            padding: const EdgeInsets.all(20),
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [
                                    Colors.transparent,
                                    Colors.black87,
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  stops: [0.7, 1]),
                            ),
                            // user, name, age, online status
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      width: 150,
                                      height: 5,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.rectangle,
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          border:
                                              Border.all(color: Colors.black)),
                                    ),
                                    const SizedBox(
                                      width: 3,
                                    ),
                                    Container(
                                      width: 150,
                                      height: 5,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.rectangle,
                                          color: Colors.white24,
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          border:
                                              Border.all(color: Colors.black)),
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                // user names , ages
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      userNames[i],
                                      // wrote this line first while explanation
                                      // style: TextStyle(color: Colors.white,fontSize: 20),
                                      style: AppStyles.namesStyle,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      userAges[i].toString(),
                                      style: AppStyles.namesStyle,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                // online status
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 10,
                                        height: 10,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: onlineStatus[i] == "Online"
                                                ? Colors.greenAccent
                                                : Colors.red),
                                      ),
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      Text(
                                        onlineStatus[i],
                                        style: onlineStatus[i] == "Online"
                                            ? AppStyles.subHeadingStyle
                                            : AppStyles.subHeadingStyle
                                                .copyWith(
                                                    color: Colors.deepOrange),
                                        // textAlign: TextAlign.left,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // if (showHeart)
                          //   Positioned(
                          //     child: Icon(
                          //       Icons.favorite,
                          //       size: 150,
                          //       color: Colors.red.withOpacity(0.8),
                          //     ),
                          //   ),
                          // if (showCross)
                          //   Positioned(
                          //     child: Icon(
                          //       Icons.close,
                          //       size: 150,
                          //       color: Colors.greenAccent.withOpacity(0.8),
                          //     ),
                          //   ),
                        ],
                      ),
                    );
                  },
                  cardsCount: usersImagesList.length,
                  numberOfCardsDisplayed: 2,
                  isLoop: false,
                  onSwipe: (previous,current,direction){
                    setState(() {
                      currentIndex = current!; // Update the current index when swiped
                    });
                    return true;
                  },
                  // onSwipe: (previous, current, direction) {
                  //
                  //   if (direction == CardSwiperDirection.right) {
                  //     setState(() {
                  //       showHeart = true;
                  //     });
                  //     Timer(const Duration(seconds: 1), () {
                  //       setState(() {
                  //         showHeart = false;
                  //       });
                  //     });
                  //   }
                  //   if (direction == CardSwiperDirection.left) {
                  //     setState(() {
                  //       showCross = true;
                  //     });
                  //     Timer(const Duration(seconds: 1), () {
                  //       setState(() {
                  //         showCross = false;
                  //       });
                  //     });
                  //   }
                  //   return true;
                  // },
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.transparent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  goToPreviousImage();
                },
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: AppStyles.circleButtonStyle,
                  child: const Icon(Icons.rotate_left_rounded,
                      color: Colors.white, size: 35),
                ),
              ),
              GestureDetector(
                onTap: () {
                  controller.swipe(CardSwiperDirection.right);
                },
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: AppStyles.circleButtonStyle,
                  child:
                      const Icon(Icons.favorite, color: Colors.white, size: 35),
                ),
              ),
              GestureDetector(
                onTap: () {
                  controller.swipe(CardSwiperDirection.left);
                },
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: AppStyles.circleButtonStyle,
                  child: const Icon(Icons.close, color: Colors.white, size: 35),
                ),
              ),
              GestureDetector(
                onTap: () {
                  controller.swipe(CardSwiperDirection.top);
                },
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: AppStyles.circleButtonStyle,
                  child:
                      const Icon(Icons.flash_on, color: Colors.white, size: 35),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
