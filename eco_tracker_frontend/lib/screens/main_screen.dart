import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:eco_tracker_frontend/screens/book_screen.dart';
import 'package:eco_tracker_frontend/screens/calculator_screen.dart';
import 'package:eco_tracker_frontend/screens/home_screen.dart';
import 'package:eco_tracker_frontend/screens/profile_screen.dart';
import 'package:eco_tracker_frontend/screens/wallet_screen.dart';
import 'package:eco_tracker_frontend/theme.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _index = 2;
  List screens = [
    CalculatorScreen(),
    BookScreen(),
    HomeScreen(),
    WalletScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    Widget bottomNavigationBar() {
      return CurvedNavigationBar(
        buttonBackgroundColor: tertiaryTextColor,
        index: _index,
        onTap: (index) => setState(() {
          _index = index;
        }),
        color: tertiaryColor,
        animationCurve: Curves.easeOutQuart,
        backgroundColor: Colors.transparent,
        items: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Image.asset(
              'assets/icon_calculator.png',
              fit: BoxFit.cover,
              width: 17,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Image.asset(
              'assets/icon_book.png',
              fit: BoxFit.cover,
              width: 27,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Image.asset(
              'assets/icon_home.png',
              width: 27,
              fit: BoxFit.cover,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Image.asset(
              'assets/icon_wallet.png',
              fit: BoxFit.cover,
              width: 27,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Image.asset(
              'assets/icon_profile.png',
              fit: BoxFit.cover,
              width: 27,
              color: Colors.white,
            ),
          ),
        ],
      );
    }

    return Scaffold(
      extendBody: true,
      body: screens[_index],
      bottomNavigationBar: bottomNavigationBar(),
    );
  }
}
