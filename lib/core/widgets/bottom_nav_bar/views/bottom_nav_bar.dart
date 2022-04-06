import 'package:flutter/material.dart';
import 'package:fyp/core/widgets/bottom_nav_bar/providers/selected_page_provider.dart';
import 'package:fyp/feature/home/views/home.dart';
import 'package:fyp/feature/login/views/login.dart';
import 'package:fyp/feature/signup/views/signup_page.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BottomNavBar extends ConsumerWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  final _pageOptions = const [HomePage(), LoginPage(), SignupPage()];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _pageOptions[ref.watch(selectedPageRef)],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 20, color: Colors.black),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.music_note,
              size: 20,
              color: Colors.black,
            ),
            label: 'Songs',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
              size: 20,
              color: Colors.black,
            ),
            label: 'Favourite',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              size: 20,
              color: Colors.black,
            ),
            label: 'Profile',
          ),
        ],
        selectedItemColor: Colors.green,
        elevation: 5.0,
        unselectedItemColor: Colors.green[900],
        currentIndex: ref.watch(selectedPageRef),
        backgroundColor: Colors.white,
        onTap: (index) {
          ref.read(selectedPageRef.notifier).selectedPage = index;
        },
      ),
    );
  }
}
