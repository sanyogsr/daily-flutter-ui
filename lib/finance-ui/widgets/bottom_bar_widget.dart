import 'package:dailyuipractice/finance-ui/constants.dart';
import 'package:dailyuipractice/finance-ui/screens/home_screen.dart';
import 'package:dailyuipractice/finance-ui/screens/splash_screen.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BottomBar extends StatefulWidget {
  BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _bottomBarState();
}

class _bottomBarState extends State<BottomBar> {
  List<Widget> pages = [
    HomeScreen(),
    Icon(Icons.search),
    Icon(Icons.security_update_warning_sharp),
    Icon(Icons.calendar_month),
    Icon(Icons.calendar_month),
  ];

  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: pages[_currentIndex]),
      bottomNavigationBar: SizedBox(
        height: 70,
        child: BottomNavigationBar(
            unselectedItemColor: Colors.black.withOpacity(.8),
            iconSize: 25,
            selectedFontSize: 18, // Increase the selected item font size
            unselectedFontSize: 16, // Increase the unselected item font size
            elevation: 9,
            enableFeedback: true,
            selectedItemColor: primaryColor,
            backgroundColor: Colors.white,
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  FeatherIcons.home,
                ),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  FeatherIcons.dollarSign,
                ),
                label: "Wallet",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  FeatherIcons.arrowUpCircle,
                ),
                label: " ",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  FeatherIcons.user,
                ),
                label: "Profile",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  FeatherIcons.settings,
                ),
                label: "Settings",
              ),
            ]),
      ),
    );
  }
}
