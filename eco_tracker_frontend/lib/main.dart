import 'package:eco_tracker_frontend/screens/book_screen.dart';
import 'package:eco_tracker_frontend/screens/calculator_screen.dart';
import 'package:eco_tracker_frontend/screens/home_screen.dart';
import 'package:eco_tracker_frontend/screens/login_screen.dart';
import 'package:eco_tracker_frontend/screens/main_screen.dart';
import 'package:eco_tracker_frontend/screens/profile_screen.dart';
import 'package:eco_tracker_frontend/screens/register_screen.dart';
import 'package:eco_tracker_frontend/screens/splash_screen.dart';
import 'package:eco_tracker_frontend/screens/wallet_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/register': (context) => RegisterScreen(),
        '/login': (context) => LoginScreen(),
        '/main': (context) => MainScreen(),
        '/calculator': (context) => CalculatorScreen(),
        '/book': (context) => BookScreen(),
        '/home': (context) => HomeScreen(),
        '/wallet': (context) => WalletScreen(),
        '/profile': (context) => ProfileScreen(),
      },
    );
  }
}
