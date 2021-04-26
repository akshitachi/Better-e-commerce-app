import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ProfileScreen extends StatelessWidget {
  final String routeName = '/profile-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Profile',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: Color(0xffBCE0FD),
        elevation: 0,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 200,
            width: double.infinity,
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xffBCE0FD),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(50),
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    width: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('assets/images/profile.jpg'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  right: 120,
                  bottom: 35,
                  child: IconButton(
                    icon: Icon(
                      Icons.edit,
                    ),
                    onPressed: () {},
                  ),
                ),
                Positioned(
                  bottom: 10,
                  right: 120,
                  child: Center(
                    child: Text(
                      'Jennifer mark',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          buildPadding(
            'Mobile Number',
            '987654321',
          ),
          buildPadding(
            'E-Mail Id',
            'sggdg@gmail.com',
          ),
          buildPadding(
            'Address',
            'Patna,India',
          ),
          buildPadding(
            'Refer a friend',
            '',
          ),
          buildPadding(
            'Support',
            '',
          ),
          buildPadding(
            'About',
            '',
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              FlatButton(
                child: RichText(
                  text: TextSpan(
                    children: [
                      WidgetSpan(
                        child: Icon(
                          Icons.logout,
                          size: 20,
                        ),
                      ),
                      TextSpan(
                        text: '  Logout',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                onPressed: () {
                  FirebaseAuth.instance.signOut();
                  Navigator.of(context).pushReplacementNamed('/sign-up');
                },
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget buildPadding(String key, String value) {
    return Padding(
      padding: EdgeInsets.all(14.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            key,
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            width: 100,
          ),
          Text(
            value,
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
