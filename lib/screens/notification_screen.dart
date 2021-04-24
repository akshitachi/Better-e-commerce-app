import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  final String routeName = '/notification-screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Notifications',
          style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.normal,
          ),
        ),
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(30.0),
        child: Row(
          children: [
            Image.asset(
              'assets/images/Icon material-feedback.png',
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.06,
            ),
            Text(
              'Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit,\nsed do eiusmod tempor incididunt\nut labore et dolore magna aliqua. \nUt enim ad minim veniam, quis \nnostrud exercitation ullamco ',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
