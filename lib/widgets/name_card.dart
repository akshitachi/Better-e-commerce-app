import 'package:flutter/material.dart';

class NameCard extends StatefulWidget {
  @override
  _NameCardState createState() => _NameCardState();
}

class _NameCardState extends State<NameCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.28,
      width: double.infinity,
      decoration: BoxDecoration(
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Welcome,Jen',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xffD7E7F6),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.28,
              ),
              IconButton(
                icon: Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed('/cart-screen');
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed('/price-range');
                },
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 10,
            ),
            child: Container(
              height: 20,
              width: 20,
              child: Image.asset('assets/images/Rectangle 18.png'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Explore wide varieties of Grocery, fresh fruits\nand vegetables,Electronic applicances, kitchen sets,\ngardening sets and much more',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(18.0),
            child: Container(
              width: double.infinity,
              height: 50,
              child: RaisedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/search-screen');
                },
                child: Text(
                  '\u{1F50D}  search over 1500 products',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 17,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
