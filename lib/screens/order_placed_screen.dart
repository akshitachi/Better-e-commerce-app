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
    );
  }
}
