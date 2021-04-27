import 'package:flutter/material.dart';

class OrdersScreen extends StatelessWidget {
  final String routeName = '/orders-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'My Orders',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: Color(0xff4A50F0),
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.13,
            color: Color(0xffD6D6D6),
            child: Stack(
              children: [
                Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.054,
                    color: Color(0xffEEF8BC),
                    child: Center(
                      child: Positioned(
                        top: 10,
                        child: Text(
                          'Placed on Jul 31,2020',
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 60,
                  right: 70,
                  child: Text(
                    'Estimated Delivery on 1Aug,2020',
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: ListTile(
              leading: Image.asset(
                'assets/images/lays.png',
              ),
              title: Text(
                'Classic Salty Lays',
                style: TextStyle(
                  fontSize: 13,
                ),
              ),
              subtitle: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        '₹85',
                        style: TextStyle(
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                      Text(
                        '  ₹55',
                      ),
                    ],
                  ),
                  Text(
                    'Order ID:23456',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              trailing: Container(
                width: 130,
                height: 100,
                child: Image.asset(
                  'assets/images/status.png',
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Final amount Paid'),
                    Text('234/-'),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: ListTile(
              leading: Container(
                height: 40,
                width: 40,
                child: Image.asset(
                  'assets/images/google-maps.png',
                ),
              ),
              title: Text(
                'Order to be Deliverd To',
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                'Hn 0:29-90-90 , Chnadranagae,\npatna,207008',
              ),
              trailing: Container(
                height: 40,
                width: 40,
                child: Image.asset(
                  'assets/images/pencil.png',
                ),
              ),
            ),
          ),
          Divider(
            color: Color(0xffADADAD),
          ),
          Padding(
            padding: EdgeInsets.all(40.0),
            child: Center(
              child: Container(
                width: double.infinity,
                height: 50,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    'Cancel your Order',
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
    );
  }
}
