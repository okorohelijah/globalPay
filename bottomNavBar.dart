import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';


class BottomNavBar extends StatefulWidget {

  static Route get route => MaterialPageRoute(
    builder: (context) => BottomNavBar(),
  );
  BottomNavBar({Key? key}) : super(key: key);



  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}
class _BottomNavBarState extends State<BottomNavBar> {
  int _page = 0;
  static const List<Widget> _widgetOptions = <Widget>[

    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Recent Transactions',
      style: optionStyle,
    ),
    Text(
      'Index 2: Support',
      style: optionStyle,
    ),
    Text(
      'Index 3: Profile',
      style: optionStyle,
    ),
    // Feeds(),
    // Search(),
    // Post(),
    // Spotlights(),
  ];

  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      // drawer: const SideBar(),
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
          child: GNav(
            backgroundColor: Colors.black,
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.grey.shade800,
            gap: 8,
            padding: EdgeInsets.all(16),
            tabs:  [
              GButton(
                icon: Icons.home,
                text: "Home",),
              GButton(
                icon: Icons.search,
                text: "Search",),
              GButton(
                icon: Icons.add_circle_outline,
                text: "Post",),
              GButton(
                icon: Icons.highlight,
                text: "Spotlight",),
            ],
            selectedIndex: _page,
            onTabChange: (index){
              setState(() {
                _page = index;
              });
            },
          ),
        ),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_page),

      ),

    );
  }



}


