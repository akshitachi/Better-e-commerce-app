import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  final String routeName = '/settings';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Settings',
          style: TextStyle(
            color: Colors.black,
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
        padding: const EdgeInsets.all(25.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Text(
                'Settings',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              buildRow('Icon material-person', 'Account'),
              Divider(
                height: 1,
                thickness: 1,
                color: Color(0xffBCBCBC),
              ),
              buildName(
                'Edit profile',
                'is-greater-than-mathematical-sign',
              ),
              buildName(
                'Change Password',
                'is-greater-than-mathematical-sign',
              ),
              buildRow(
                'Icon ionic-md-notifications',
                'Notifications',
              ),
              Divider(
                height: 1,
                thickness: 1,
                color: Color(0xffBCBCBC),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Padding buildName(String name, String assetName) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 8.0,
        bottom: 8.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FlatButton(
            onPressed: () {},
            child: Text(
              name,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
              ),
            ),
          ),
          IconButton(
            icon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'assets/images/$assetName.png',
                color: Colors.grey,
              ),
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  Widget buildRow(String assetName, String name) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        ImageIcon(
          AssetImage(
            'assets/images/$assetName.png',
          ),
          color: Color(
            0xff4856D0,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            name,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
