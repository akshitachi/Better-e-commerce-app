import '../widgets/cart_item.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  CartScreen({Key key}) : super(key: key);

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  final String routeName = '/cart-screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Cart',
          style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.normal,
          ),
        ),
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CartItem(),
            Divider(
              height: 1,
              thickness: 1,
              color: Color(0xffBCBCBC),
            ),
            CartItem(),
            Divider(
              height: 1,
              thickness: 1,
              color: Color(0xffBCBCBC),
            ),
            CartItem(),
            Divider(
              height: 1,
              thickness: 1,
              color: Color(0xffBCBCBC),
            ),
            CartItem(),
            Padding(
              padding: const EdgeInsets.all(25.0),
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
                      'Keep shopping',
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
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Center(
                child: Container(
                  width: double.infinity,
                  height: 40,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.of(context)
                          .pushReplacementNamed('/orders-screen');
                    },
                    child: Text(
                      'Check out',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.blue,
                      ),
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
