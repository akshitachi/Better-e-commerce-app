import 'package:flutter/material.dart';

class AuthForm extends StatefulWidget {
  AuthForm({Key key}) : super(key: key);

  @override
  _AuthFormState createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(40),
                    ),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 3.0,
                        spreadRadius: 0.8,
                        offset: Offset(0.5, 0.5),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 50,
                  left: 30,
                  child: Text(
                    'app name',
                    style: TextStyle(
                      color: Color(0xff4C52F0),
                      fontSize: 25,
                      fontWeight: FontWeight.normal,
                      letterSpacing: 1,
                    ),
                  ),
                )
              ],
            ),
            Form(
              child: Padding(
                padding: const EdgeInsets.all(40.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Text(
                        'Email id',
                        style: TextStyle(
                          fontSize: 10,
                          color: Color(0xff9094F5),
                        ),
                      ),
                    ),
                    Material(
                      borderRadius: BorderRadius.circular(30),
                      elevation: 5,
                      shadowColor: Colors.grey,
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Text(
                        'Password',
                        style: TextStyle(
                          fontSize: 10,
                          color: Color(0xff9094F5),
                        ),
                      ),
                    ),
                    Material(
                      borderRadius: BorderRadius.circular(30),
                      elevation: 5,
                      shadowColor: Colors.grey,
                      child: TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Text(
                        'Re-enter password',
                        style: TextStyle(
                          fontSize: 10,
                          color: Color(0xff9094F5),
                        ),
                      ),
                    ),
                    Material(
                      borderRadius: BorderRadius.circular(30),
                      elevation: 5,
                      shadowColor: Colors.grey,
                      child: TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                    ),
                    Center(
                      child: Container(
                        width: double.infinity,
                        height: 50,
                        child: RaisedButton(
                          onPressed: () {},
                          child: Text(
                            'Signin',
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        FlatButton(
                          onPressed: () {},
                          child: Text(
                            'forgot password',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.all(16),
                      child: Center(
                        child: Container(
                          height: 10,
                          width: 50,
                          child:
                              Image.asset('assets/images/Rectangle 1611.png'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20.0,
                        right: 20.0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            icon: Image.asset(
                              'assets/images/facebook.png',
                            ),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: Image.asset(
                              'assets/images/google.png',
                            ),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: Image.asset(
                              'assets/images/twitter.png',
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
