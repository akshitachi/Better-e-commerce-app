import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  final String routeName = '/settings';
  bool _switchValue = true;
  bool _switchValueApp = false;
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
              ),
              buildName(
                'Change Password',
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FlatButton(
                    onPressed: () {},
                    child: Text(
                      'notifications',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Switch(
                    activeColor: Colors.green,
                    inactiveThumbColor: Colors.red,
                    value: _switchValue,
                    onChanged: (value) {
                      setState(() {
                        _switchValue = value;
                      });
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FlatButton(
                    onPressed: () {},
                    child: Text(
                      'App notifications',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Switch(
                    activeColor: Colors.green,
                    inactiveThumbColor: Colors.red,
                    value: _switchValueApp,
                    onChanged: (value) {
                      setState(() {
                        _switchValueApp = value;
                      });
                    },
                  ),
                ],
              ),
              buildRow(
                'Icon material-more',
                'More',
              ),
              Divider(
                height: 1,
                thickness: 1,
                color: Color(0xffBCBCBC),
              ),
              buildName(
                'Language',
              ),
              buildName(
                'Country',
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Center(
                child: Container(
                  width: double.infinity,
                  height: 50,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.of(context)
                          .pushReplacementNamed('/edit-profile');
                    },
                    child: Text(
                      'Edit Profile',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    color: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Padding buildName(String name) {
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
                'assets/images/is-greater-than-mathematical-sign.png',
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
