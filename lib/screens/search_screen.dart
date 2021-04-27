import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final String routeName = '/search-screen';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(Icons.search),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xffF1F9FF),
                  ),
                  width: double.infinity,
                  height: 60,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 14.0,
                      top: 12,
                    ),
                    child: Text(
                      'Banana',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xffF1F9FF),
                  ),
                  width: double.infinity,
                  height: 60,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 14.0,
                      top: 12,
                    ),
                    child: Text(
                      'Iphone',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xffF1F9FF),
                  ),
                  width: double.infinity,
                  height: 60,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 14.0,
                      top: 12,
                    ),
                    child: Text(
                      'Trousers',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xffF1F9FF),
                  ),
                  width: double.infinity,
                  height: 60,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 14.0,
                      top: 12,
                    ),
                    child: Text(
                      'steel bowls',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Excepteur snt occaecat',
                    suffixIcon: Icon(
                      Icons.search,
                    ),
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Cupidatal non',
                    suffixIcon: Icon(
                      Icons.search,
                    ),
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Sunt in culpa qui officia',
                    suffixIcon: Icon(
                      Icons.search,
                    ),
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Cupidatat non',
                    suffixIcon: Icon(
                      Icons.search,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
