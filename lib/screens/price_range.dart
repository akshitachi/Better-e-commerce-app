import 'package:flutter/material.dart';

class PriceRange extends StatefulWidget {
  PriceRange({Key key}) : super(key: key);

  @override
  _PriceRangeState createState() => _PriceRangeState();
}

class _PriceRangeState extends State<PriceRange> {
  RangeLabels labels = RangeLabels('100', '1000');
  final String routeName = '/price-range';
  RangeValues values = RangeValues(1, 100);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: EdgeInsets.only(
              right: 20,
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Icon(
                Icons.check,
              ),
            ),
          ),
        ],
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 25,
                  width: 25,
                  child: Image.asset('assets/images/tag.png'),
                ),
                Text(
                  '    Price Range',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            RangeSlider(
                divisions: 5,
                activeColor: Colors.blue,
                inactiveColor: Colors.grey,
                min: 1,
                max: 100,
                values: values,
                labels: labels,
                onChanged: (value) {
                  print("START: ${value.start}, End: ${value.end}");
                  setState(() {
                    values = value;
                    labels = RangeLabels("${value.start.toInt().toString()}\$",
                        "${value.end.toInt().toString()}\$");
                  });
                }),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Row(
              children: [
                Container(
                  height: 25,
                  width: 25,
                  child:
                      Image.asset('assets/images/Icon map-clothing-store.png'),
                ),
                Text(
                  '    Size Range',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Row(
              children: [
                Container(
                  height: 25,
                  width: 25,
                  child:
                      Image.asset('assets/images/Icon simple-brand-dot-ai.png'),
                ),
                Text(
                  '    Brands',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
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
