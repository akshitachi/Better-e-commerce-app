import 'package:flutter/material.dart';

class PriceRange extends StatefulWidget {
  PriceRange({Key key}) : super(key: key);

  @override
  _PriceRangeState createState() => _PriceRangeState();
}

class _PriceRangeState extends State<PriceRange> {
  RangeLabels labels = RangeLabels('10', "101");
  final String routeName = '/price-range';
  String _chosenValue;
  String _chosenValue1;
  String _chosenValue2;
  RangeValues values = RangeValues(10, 101);
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
                min: 0,
                max: 101,
                values: values,
                labels: labels,
                onChanged: (value) {
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
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  SizedBox(
                    width: 130,
                    child: DropdownButtonFormField<String>(
                      focusColor: Colors.white,
                      itemHeight: 50,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                      value: _chosenValue,
                      //elevation: 5,
                      style: TextStyle(color: Colors.white),
                      iconEnabledColor: Colors.black,
                      items: <String>[
                        'Extra Small',
                        'Small',
                        'Medium',
                        'Large',
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: TextStyle(color: Colors.black),
                          ),
                        );
                      }).toList(),
                      hint: Text(
                        "Range",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                      onChanged: (String value1) {
                        setState(() {
                          _chosenValue = value1;
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  SizedBox(
                    width: 130,
                    child: DropdownButtonFormField<String>(
                      focusColor: Colors.blue,
                      itemHeight: 50,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blue,
                          ),
                        ),
                      ),
                      value: _chosenValue1,
                      items: <String>[
                        'Medium',
                        'Large',
                        'Extra Large',
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: TextStyle(color: Colors.black),
                          ),
                        );
                      }).toList(),
                      hint: Text(
                        "Range",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                      onChanged: (String value) {
                        setState(() {
                          _chosenValue1 = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
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
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 130,
                    child: DropdownButtonFormField<String>(
                      focusColor: Colors.blue,
                      itemHeight: 50,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blue,
                          ),
                        ),
                      ),
                      value: _chosenValue2,
                      items: <String>[
                        'Zara',
                        'Skechers',
                        'Puma',
                        'Nike',
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: TextStyle(color: Colors.black),
                          ),
                        );
                      }).toList(),
                      hint: Text(
                        "Brands",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                      onChanged: (String value) {
                        setState(() {
                          _chosenValue2 = value;
                        });
                      },
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
