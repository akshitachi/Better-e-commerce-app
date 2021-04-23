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
                  bottom: 0,
                  right: 0,
                  top: 0,
                  left: 0,
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
            Row(
              children: [
                _buildStack(
                  'Rectangle 12',
                  'Fruits',
                  'Fresh fruits and vegetables availiable',
                  '40',
                ),
                _buildStack(
                  'Rectangle 14',
                  'Shoes',
                  'Branded shoes and flips availiable',
                  '400',
                ),
                _buildStack(
                  'Rectangle 16',
                  'Electronic appliances',
                  'Laptops, mobile phones & more..',
                  '1500',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Stack _buildStack(
    String assetName,
    String category,
    String description,
    String itemcount,
  ) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/$assetName.png',
        ),
        Positioned(
          top: 20,
          right: 45,
          child: Text(
            category,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        Positioned(
          top: 0,
          bottom: 30,
          right: 0,
          left: 0,
          child: Center(
            child: Text(
              description,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
            ),
          ),
        ),
        Positioned(
          top: 50,
          bottom: 0,
          left: 0,
          right: 0,
          child: Center(
            child: Text(
              itemcount,
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Positioned(
          top: 120,
          bottom: 0,
          left: 0,
          right: 0,
          child: Center(
            child: Text(
              'items',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
