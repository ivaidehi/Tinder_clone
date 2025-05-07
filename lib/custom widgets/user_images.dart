// import 'dart:async';
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_card_swiper/flutter_card_swiper.dart';
//
// import '../styles/app_styles.dart';
//
// class UserImages extends StatefulWidget {
//   const UserImages({super.key});
//
//   @override
//   State<UserImages> createState() => _UserImagesState();
// }
//
// class _UserImagesState extends State<UserImages> {
//   List<String> usersImagesList = [
//     'assets/img1.jpg',
//     'assets/img2.jpg',
//     'assets/img3.jpg',
//     'assets/img4.jpg',
//     'assets/img5.jpg'
//   ];
//
//   List<String> userNames = ["Tiya", "Arina", "Elsa", "Lily", "Luna"];
//   List<int> userAges = [23, 25, 22, 20, 24];
//   List<String> onlineStatus = [
//     "Online",
//     "Recently Online",
//     "Online",
//     "Online",
//     "Recently Online"
//   ];
//
//   bool showHeart = true;
//   bool showCross = false;
//
//   int currentIndex = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       // color: Colors.white,
//       // padding: const EdgeInsets.symmetric(vertical: 20),
//       decoration: AppStyles.circleButtonStyle,
//       child: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.white,
//           title: Image.asset(
//             "assets/tinder logo.png",
//             width: 130,
//             height: 100,
//           ),
//           centerTitle: true,
//         ),
//         body: SizedBox(
//           height: 580,
//           // padding: const EdgeInsets.symmetric(vertical: 5),
//           child: Column(
//             children: [
//               Expanded(
//                 child: CardSwiper(
//                   cardBuilder: (BuildContext context, int i, int x, int y) {
//                     return ClipRRect(
//                       borderRadius: BorderRadius.circular(20),
//                       child: Stack(
//                         fit: StackFit.expand,
//                         children: [
//                           // User Image
//                           Image.asset(
//                             usersImagesList[i],
//                             fit: BoxFit.cover,
//                           ),
//                           // Gradient Overlay
//                           Container(
//                             padding: const EdgeInsets.all(20),
//                             decoration: const BoxDecoration(
//                               gradient: LinearGradient(
//                                   colors: [
//                                     Colors.transparent,
//                                     Colors.black87,
//                                   ],
//                                   begin: Alignment.topCenter,
//                                   end: Alignment.bottomCenter,
//                                   stops: [0.7, 1]),
//                             ),
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.start,
//                               children: [
//                                 Row(
//                                   children: [
//                                     Container(
//                                       width: 150,
//                                       height: 5,
//                                       decoration: BoxDecoration(
//                                           shape: BoxShape.rectangle,
//                                           color: Colors.white,
//                                           borderRadius:
//                                           BorderRadius.circular(20),
//                                           border:
//                                           Border.all(color: Colors.black)),
//                                     ),
//                                     const SizedBox(
//                                       width: 3,
//                                     ),
//                                     Container(
//                                       width: 150,
//                                       height: 5,
//                                       decoration: BoxDecoration(
//                                           shape: BoxShape.rectangle,
//                                           color: Colors.white24,
//                                           borderRadius:
//                                           BorderRadius.circular(20),
//                                           border:
//                                           Border.all(color: Colors.black)),
//                                     ),
//                                   ],
//                                 ),
//                                 const Spacer(),
//                                 Row(
//                                   crossAxisAlignment: CrossAxisAlignment.end,
//                                   children: [
//                                     Text(
//                                       userNames[i],
//                                       // wrote this line first while explanation
//                                       // style: TextStyle(color: Colors.white,fontSize: 20),
//                                       style: AppStyles.namesStyle,
//                                     ),
//                                     const SizedBox(
//                                       width: 10,
//                                     ),
//                                     Text(
//                                       userAges[i].toString(),
//                                       style: AppStyles.namesStyle,
//                                     ),
//                                   ],
//                                 ),
//                                 const SizedBox(
//                                   height: 10,
//                                 ),
//                                 Align(
//                                   alignment: Alignment.bottomLeft,
//                                   child: Row(
//                                     children: [
//                                       Container(
//                                         width: 10,
//                                         height: 10,
//                                         decoration: BoxDecoration(
//                                             shape: BoxShape.circle,
//                                             color: onlineStatus[i] == "Online"
//                                                 ? Colors.greenAccent
//                                                 : Colors.red),
//                                       ),
//                                       const SizedBox(
//                                         width: 8,
//                                       ),
//                                       Text(
//                                         onlineStatus[i],
//                                         style: onlineStatus[i] == "Online"
//                                             ? AppStyles.subHeadingStyle
//                                             : AppStyles.subHeadingStyle
//                                             .copyWith(
//                                             color: Colors.deepOrange),
//                                         // textAlign: TextAlign.left,
//                                       ),
//
//                                     ],
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     );
//                   },
//                   cardsCount: usersImagesList.length,
//                   numberOfCardsDisplayed: 2,
//                   isLoop: false,
//                   // onSwipe: (previous, current, direction) {
//                   //
//                   //   if (direction == CardSwiperDirection.right) {
//                   //     setState(() {
//                   //       showCross = false;
//                   //       showHeart = true;
//                   //     });
//                   //     Timer(const Duration(milliseconds: 200), () {
//                   //       setState(() {
//                   //         showHeart = false;
//                   //       });
//                   //     });
//                   //
//                   //   } else {
//                   //     setState(() {
//                   //       showHeart = false;
//                   //       showCross = true;
//                   //     });
//                   //     Timer(const Duration(milliseconds: 200), () {
//                   //       setState(() {
//                   //         showCross = false;
//                   //       });
//                   //     });
//                   //   }
//                   //   return true;
//                   // },
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
