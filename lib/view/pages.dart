import 'package:flutter/material.dart';
import 'package:instagram_app/view/screens/feed_screen.dart';
import 'package:instagram_app/view/screens/market_screen.dart';
import 'package:instagram_app/view/screens/profile_screen.dart';
import 'package:instagram_app/view/screens/reels_screen.dart';
import 'package:instagram_app/view/screens/search_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> bottomNavPage = [
    const FeedScreen(),
    const SearchScreen(),
    const ReelsScreen(),
    const MarketScreen(),
    const ProfileScreen()
  ];

  int currentIndex = 0;

  _changeBottomNavPage(int pageIndex) {
    setState(() {
      currentIndex = pageIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bottomNavPage.elementAt(currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,

        iconSize: 28.0,
        elevation: 2,
        items: [
          BottomNavigationBarItem(
            icon: currentIndex == 0 ? const Icon(Icons.home) : const Icon(Icons.home_outlined),
            label: " Feed",
          ),
          BottomNavigationBarItem(
            icon: currentIndex == 1? const Icon(Icons.search) : const Icon(Icons.search_outlined),
              label: "Search"
          ),
          BottomNavigationBarItem(
            icon: currentIndex == 2?const Icon(Icons.video_library): const Icon(Icons.video_library_outlined),
              label: " Reels"
          ),
          BottomNavigationBarItem(
            icon: currentIndex == 3? const Icon(Icons.shopping_bag): const Icon(Icons.shopping_bag_outlined),
              label: " Market"
          ),
          const BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('images/adams.jpeg'),
            ),
              label: "Profile "
          ),
        ],
        currentIndex: currentIndex,
        onTap: _changeBottomNavPage,
      ),
    );
  }
}