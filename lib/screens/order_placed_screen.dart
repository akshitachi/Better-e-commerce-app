import 'package:flutter/material.dart';

class OrderPlaced extends StatelessWidget {
  final String routeName = '/order-placed';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Order Placed',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.normal,
          ),
        ),
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: Color(0xff4A50F0),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    child: Image.asset(
                      'assets/images/check.png',
                    ),
                  ),
                  Text(
                    'Great !',
                    style: TextStyle(
                      color: Color(0xff4A50F0),
                      letterSpacing: 1,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Your Order has been Placed !\nWe will reach you shortly with your order',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.0, 1.0), //(x,y)
                    // blurRadius: 6.0,
                  ),
                ],
              ),
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.07,
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '      ORDER DETAILS',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              children: [
                buildPadding(
                  'Name',
                  'Jonathan Green',
                ),
                buildPadding(
                  'Order ID',
                  'ID 16874',
                ),
                buildPadding(
                  'Date',
                  'Jul 31,2020',
                ),
                buildPadding(
                  'Address',
                  'Patna,India',
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(40.0),
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
                      'Continue Shopping',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    color: Color(0xffBBDFFC),
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
    );
  }
}

Widget buildPadding(String key, String value) {
  return Padding(
    padding: EdgeInsets.only(
      right: 20.0,
      left: 20.0,
      top: 20.0,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          key,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 15,
          ),
        ),
        SizedBox(
          width: 100,
        ),
        Text(
          value,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  );
}
