import 'package:flutter/material.dart';
import 'package:project2/screens/home/home_screen.dart';
import 'package:project2/screens/home/watchlist_screen.dart';
import 'package:project2/screens/findMovie/findMovie.dart';
import 'package:project2/screens/settings/settings_screen.dart';
import 'package:project2/service/apiCall.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class BottomNavigation extends StatelessWidget {
  BottomNavigation({required this.screen_index, Key? key}) : super(key: key);
  int screen_index;

  @override
  Widget build(BuildContext context) {
    return SalomonBottomBar(
      onTap: (index) {
        screen_index = index;
        if (screen_index == 0) {
          Navigator.pushNamed(context, '/home_screen');
        } else if (screen_index == 1) {
          Navigator.pushNamed(context, '/recommender_screen');
        } else if (screen_index == 2) {
          Navigator.pushNamed(context, '/watch_list');
        } else if (screen_index == 3) {
          Navigator.pushNamed(context, '/setting_screen');
        }
      },
      currentIndex: screen_index,
      items: [
        SalomonBottomBarItem(
            selectedColor: Colors.blueAccent,
            title: const Text('Home'),
            icon: const Icon(Icons.home_filled,size: 25,)),
        SalomonBottomBarItem(
            selectedColor: Colors.blueAccent,
            title: const Text('Find Movie'),
            icon: const Icon(Icons.play_circle)),
        SalomonBottomBarItem(
            selectedColor: Colors.blueAccent,
            title: const Text('Watchlist'),
            icon: const Icon(Icons.bookmark)),
        SalomonBottomBarItem(
            selectedColor: Colors.blueAccent,
            title: const Text('Settings'),
            icon: const Icon(Icons.person)),
      ],
      backgroundColor: const Color(0xFF09090F),
      unselectedItemColor: Color(0xFFA0A0A0),
      // type: BottomNavigationBarType.shifting,
    );
  }
}
