import 'package:e_commerce2/screens/feedback_screen.dart';

import './screens/first_page.dart';
import './screens/logout_screen.dart';
import './screens/notification_screen.dart';
import './screens/settings_screen.dart';
import './screens/privacy_policy_page.dart';
import './widgets/nav_bar.dart';

import './screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-Commerce App',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: NavBar(),
      routes: {
        '/privacy-policy': (ctx) => PrivacyPolicy(),
        '/settings': (ctx) => SettingsScreen(),
        '/logout': (ctx) => LogOutScreen(),
        '/notification-screen': (ctx) => NotificationScreen(),
        '/home-screen': (ctx) => HomeScreen(),
        '/feedback-screen': (ctx) => FeedBackScreen(),
      },
    );
  }
}
