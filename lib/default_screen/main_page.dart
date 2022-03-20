import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:testpurpose/login_screen/data/model/ad_user.dart';
import 'package:testpurpose/utils/home_page_drawer.dart';

import '../main_screen/screen/home_page.dart';
import '../profile_screen/screen/profile_page.dart';
import '../settings_screen/screens/settings_page.dart';

class MainPage extends StatefulWidget {
  final dynamic args;
  MainPage(this.args, {Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  ADUser user = ADUser();
  final navigationKey = GlobalKey<CurvedNavigationBarState>();
  late List<Widget> myScreens;
  int indx = 1;
  final navBarItems = const [
    Icon(Icons.person),
    Icon(Icons.home),
    Icon(Icons.settings),
  ];
  @override
  void initState() {
    super.initState();
    myScreens = [
      const ProfilePage(),
      HomePage(userObj: widget.args[0]),
      SettingsPage()
    ];
  }

  void onTapIcon(int ind) {
    setState(() {
      indx = ind;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const HomePageDrawer(),
      body: myScreens.elementAt(indx),
      extendBody: true,
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.cyanAccent,
        height: 50,
        buttonBackgroundColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        animationDuration: const Duration(milliseconds: 300),
        animationCurve: Curves.fastLinearToSlowEaseIn,
        index: indx,
        items: navBarItems,
        onTap: onTapIcon,
      ),
    );
  }
}
