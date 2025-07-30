import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _currentIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          Center(child: Text("Feed", style: TextStyle(fontSize: 32))),
          Center(child: Text("Search", style: TextStyle(fontSize: 32))),
          Center(child: Text("Add Image", style: TextStyle(fontSize: 32))),
          Center(child: Text("Favorite", style: TextStyle(fontSize: 32))),
          Center(child: Text("Profile", style: TextStyle(fontSize: 32))),
          ],
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentIndex,
        showElevation: true,
        itemCornerRadius: 8,
        curve: Curves.easeInBack,
        onItemSelected: (index) {
          setState(() {
            _currentIndex = index;
          });
          _pageController.jumpToPage(index);
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon: FaIcon(FontAwesomeIcons.house),
            title: Text(
              'Home',
              style: TextStyle(fontSize: 25, fontFamily: 'Billabong'),
            ),
            textAlign: TextAlign.center,
            activeColor : Colors.red,
            inactiveColor : Colors.black,
          ),
          BottomNavyBarItem(
            icon: FaIcon(FontAwesomeIcons.magnifyingGlass),
            title: Text(
              'Search',
              style: TextStyle(fontSize: 25, fontFamily: 'Billabong'),
            ),
            textAlign: TextAlign.center,
            activeColor : Colors.red,
            inactiveColor : Colors.black,
          ),
          BottomNavyBarItem(
            icon: FaIcon(FontAwesomeIcons.plus),
            title: Text(
              'AddImage',
              style: TextStyle(fontSize: 25, fontFamily: 'Billabong'),
            ),
            textAlign: TextAlign.center,
            activeColor : Colors.red,
            inactiveColor : Colors.black,
          ),
          BottomNavyBarItem(
            icon: FaIcon(FontAwesomeIcons.heart),
            title: Text(
              'Favorite',
              style: TextStyle(fontSize: 25, fontFamily: 'Billabong'),
            ),
            textAlign: TextAlign.center,
            activeColor : Colors.red,
            inactiveColor : Colors.black,
          ),
          BottomNavyBarItem(
            icon: FaIcon(FontAwesomeIcons.user),
            title: Text(
              'Profile',
              style: TextStyle(fontSize: 25, fontFamily: 'Billabong'),
            ),
            textAlign: TextAlign.center,
            activeColor : Colors.red,
            inactiveColor : Colors.black,
          ),
        ],
      ),
    );
  }
}
