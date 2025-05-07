import 'package:flutter/cupertino.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:tinder_clone_app/screens/chat_screen.dart';
import 'package:tinder_clone_app/screens/explore_screen.dart';
import 'package:tinder_clone_app/screens/swipe_screen.dart';

class MyBottomNavBar extends StatefulWidget {
  const MyBottomNavBar({super.key});

  @override
  State<MyBottomNavBar> createState() => _MyBottomNavBarState();
}

class _MyBottomNavBarState extends State<MyBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        activeColor: Colors.pink,
        backgroundColor: Colors.white,
        iconSize: 36,
        height: 80,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image(image: AssetImage("assets/nonactive_icon.png"),width: 30,height: 30,), // Heart outline icon
            activeIcon: Image(image: AssetImage("assets/tinder_icon.png",),width: 30,height: 30,), // Filled heart icon
          ),
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_star_filled),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_star_filled),
          ),
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_chat_filled),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_chat_filled),
          ),
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_person_filled),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
          ),
        ],
      ),
      tabBuilder: (context, index) {
        switch (index) {
          case 0:
            return CupertinoTabView(
              builder: (context) {
                return const CupertinoPageScaffold(child: SwipeScreen());
              },
              routes: {
                "wrapped_appt_screen": (context) => const SwipeScreen(),
              },
            );
          case 1:
            return CupertinoTabView(
              builder: (context) {
                return const CupertinoPageScaffold(child: ExploreScreen());
              },
              routes: {
                "wrapped_appt_screen": (context) => const ExploreScreen(),
              },
            );
          case 2:
            return CupertinoTabView(
              builder: (context) {
                return const CupertinoPageScaffold(child: ChatScreen());
              },
              routes: {
                "wrapped_appt_screen": (context) => const ChatScreen(),
              },
            );
        }
        return Container();
      },
    );
  }
}