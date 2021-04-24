import 'package:e_commerce2/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  final String routeName='/home-screen';
  int _currentIndex = 0;
  PageController _pageController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: PageView(
          physics: NeverScrollableScrollPhysics(),
          controller: _pageController,
          onPageChanged: (index) {
            setState(
              () => _currentIndex = index,
            );
          },
          children: <Widget>[
            HomeScreen(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentIndex,
        showElevation: true,
        itemCornerRadius: 24,
        curve: Curves.easeIn,
        animationDuration: Duration(milliseconds: 500),
        onItemSelected: (index) {
          setState(() => _currentIndex = index);
          _pageController.jumpToPage(index);
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon: Image.asset('assets/images/Icon feather-home.png'),
            title: Text('Home'),
            activeColor: Colors.blue,
            textAlign: TextAlign.center,
            inactiveColor: Colors.black,
          ),
          BottomNavyBarItem(
            icon: Image.asset('assets/images/Icon material-filter-list.png'),
            title: Text('List'),
            activeColor: Colors.blue,
            textAlign: TextAlign.center,
            inactiveColor: Colors.black,
          ),
          BottomNavyBarItem(
            icon: Image.asset('assets/images/Icon feather-search.png'),
            title: Text('Search'),
            activeColor: Colors.blue,
            textAlign: TextAlign.center,
            inactiveColor: Colors.black,
          ),
          BottomNavyBarItem(
            icon: Image.asset('assets/images/Icon feather-shopping-bag.png'),
            title: Text(
              'Orders',
            ),
            activeColor: Colors.blue,
            textAlign: TextAlign.center,
            inactiveColor: Colors.black,
          ),
          BottomNavyBarItem(
            icon: Image.asset('assets/images/Icon feather-user.png'),
            title: Text('User'),
            activeColor: Colors.blue,
            textAlign: TextAlign.center,
            inactiveColor: Colors.black,
          ),
        ],
      ),
    );
  }
}
