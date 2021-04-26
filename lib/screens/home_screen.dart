import 'package:e_commerce2/widgets/app_drawer.dart';
import 'package:e_commerce2/widgets/name_card.dart';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: AppDrawer(),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                NameCard(),
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
                SizedBox(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height / 3,
                  child: ListView(
                    
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    children: [
                      _buildStack(
                        'Rectangle 12',
                        'Rectangle 13',
                        'Fruits',
                        'Fresh fruits and vegetables availiable',
                        '40',
                        20,
                      ),
                      _buildStack(
                        'Rectangle 14',
                        'Rectangle 15',
                        'Shoes',
                        'Branded shoes and flips availiable',
                        '400',
                        20,
                      ),
                      _buildStack(
                        'Rectangle 16',
                        'Rectangle 17',
                        'Electronic appliances',
                        'Laptops, mobile phones & more..',
                        '1500',
                        13,
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Today\'s Deals',
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
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 0.8,
                                ),
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
                    Container(
                      child: Image.asset(
                        'assets/images/discount.png',
                        width: 170,
                        height: 170,
                      ),
                    ),
                    Image.asset(
                      'assets/images/discount.png',
                      width: 170,
                      height: 170,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildStack(
    String assetName,
    String assetCategory,
    String category,
    String description,
    String itemcount,
    double size,
  ) {
    return Column(
      children: [
        Image.asset(
          'assets/images/$assetCategory.png',
        ),
        Stack(
          children: [
            Image.asset(
              'assets/images/$assetName.png',
            ),
            Positioned(
              top: 20,
              right: 45,
              left: 30,
              child: Center(
                child: Text(
                  category,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: size,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 0,
              bottom: 30,
              right: 0,
              left: 0,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    description,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 11,
                    ),
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
              top: 100,
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
        ),
      ],
    );
  }
}
