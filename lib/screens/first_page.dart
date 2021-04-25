import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/credit_card.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: null,
          ),
          Positioned(
            top: 200,
            left: 100,
            child: Text(
              'Welcome',
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            top: 240,
            right: 100,
            left: 100,
            child: Center(
              child: Text(
                'to the best Shopping app ever',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Positioned(
            top: 500,
            left: 50,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Center(
                    child: SizedBox(
                      width: 200,
                      height: 50,
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.of(context)
                              .pushReplacementNamed('/sign-up');
                        },
                        child: Text(
                          'SignUp',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        color: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Center(
                    child: SizedBox(
                      width: 200,
                      height: 50,
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.of(context)
                              .pushReplacementNamed('/sign-in');
                        },
                        child: Text(
                          'SignIn',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        color: Color.fromRGBO(66, 165, 245, 0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
