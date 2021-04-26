import 'package:flutter/material.dart';

class AfterSignUp extends StatelessWidget {
  final routeName = '/after-signup';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Center(
                child: Image.asset('assets/images/Group 1.png'),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'corporis voluptatem perspiciatis numquam, culpa quidem praesentium maxime quae. Animi, eos nesciunt. Et perferendis officiis quo quasi, sunt nesciunt labore tenetur',
                  style: TextStyle(
                    color: Colors.grey,
                    wordSpacing: 2,
                    letterSpacing: 1,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Center(
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.of(context)
                            .pushReplacementNamed('/home-screen');
                      },
                      child: Text(
                        'Shop now',
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
              ),
              FlatButton(
                child: Text(
                  'skip now',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed('/home-screen');
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
