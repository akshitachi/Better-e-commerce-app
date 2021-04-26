import 'package:e_commerce2/screens/auth_screen.dart';
import 'package:e_commerce2/screens/cart_screen.dart';
import 'package:e_commerce2/screens/feedback_screen.dart';
import 'package:e_commerce2/screens/forgot_password_screen.dart';
import 'package:e_commerce2/screens/signup_screen.dart';
import 'package:e_commerce2/screens/wallet_screen.dart';
import './screens/first_page.dart';
import './screens/logout_screen.dart';
import './screens/notification_screen.dart';
import './screens/settings_screen.dart';
import './screens/privacy_policy_page.dart';
import './widgets/nav_bar.dart';
import './screens/after_signup_screen.dart';
import 'screens/search_screen.dart';
import 'package:flutter/material.dart';
import './screens/profile_screen.dart';
import './screens/order_tracking_screen.dart';

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
        primarySwatch: Colors.green,
      ),
      home: FirstScreen(),
      debugShowCheckedModeBanner: false,
      routes: {
        '/privacy-policy': (ctx) => PrivacyPolicy(),
        '/settings': (ctx) => SettingsScreen(),
        '/logout': (ctx) => LogOutScreen(),
        '/notification-screen': (ctx) => NotificationScreen(),
        '/home-screen': (ctx) => NavBar(),
        '/feedback-screen': (ctx) => FeedBackScreen(),
        '/cart-screen': (ctx) => CartScreen(),
        '/sign-up': (ctx) => SignUpScreen(),
        '/sign-in': (ctx) => AuthScreen(),
        '/after-signup': (ctx) => AfterSignUp(),
        '/forgot-password': (ctx) => ForgotPassword(),
        '/profile-screen': (ctx) => ProfileScreen(),
        '/wallet-screen': (ctx) => WalletScreen(),
        '/search-screen': (ctx) => SearchScreen(),
        '/order-tracking': (ctx) => OrderTrackingScreen(),
      },
    );
  }
}
