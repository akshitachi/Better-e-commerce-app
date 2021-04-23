import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home Page',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              height: 100,
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(35),
                ),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment(0.8, 0.0),
                  colors: <Color>[
                    Color(0xff66A1E6),
                    Color(0xff5E86E6),
                  ],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  'Welcome,Jen',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xffD7E7F6),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Stack(
              children: [
                Image.asset(
                  'assets/images/Rectangle134.png',
                  fit: BoxFit.cover,
                ),
                Positioned(
                  // The Positioned widget is used to position the text inside the Stack widget
                  bottom: 10,
                  right: 10,
                  top: 10,
                  left: 10,

                  child: Center(
                    child: Text(
                      'Grab the best deals',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Categories',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                FlatButton(
                  onPressed: () {},
                  child: RichText(
                    text: TextSpan(
                      style: Theme.of(context).textTheme.body1,
                      children: [
                        TextSpan(
                          text: 'View Items',
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                        WidgetSpan(
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 1.0),
                            child: Icon(
                              Icons.arrow_forward,
                              size: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
