import 'package:flutter/material.dart';

class FeedBackScreen extends StatefulWidget {
  FeedBackScreen({Key key}) : super(key: key);

  @override
  _FeedBackScreenState createState() => _FeedBackScreenState();
}

class _FeedBackScreenState extends State<FeedBackScreen> {
  final String routeName = '/feedback-screen';
  bool _ifPressed = false;
  bool _ifPressed1 = false;

  bool _ifPressed2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Feedback',
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
      body: Padding(
        padding: EdgeInsets.all(25.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              Center(
                child: Text(
                  'Your feedback matters to us!',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        _ifPressed = !_ifPressed;
                      });
                    },
                    icon: Image.asset(
                      'assets/images/Icon ionic-md-sad.png',
                      color: (_ifPressed && !_ifPressed1 && !_ifPressed2)
                          ? Colors.red
                          : Colors.grey,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.05,
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        _ifPressed1 = !_ifPressed1;
                      });
                    },
                    icon: Image.asset(
                      'assets/images/Icon ionic-md-happy.png',
                      color: (_ifPressed1 && !_ifPressed && !_ifPressed2)
                          ? Colors.red
                          : Colors.grey,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.05,
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        _ifPressed2 = !_ifPressed2;
                      });
                    },
                    icon: Image.asset(
                      'assets/images/Icon feather-smile.png',
                      color: (_ifPressed2 && !_ifPressed1 && !_ifPressed)
                          ? Colors.red
                          : Colors.grey,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  maxLines: 5,
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Center(
                child: Container(
                  width: double.infinity,
                  height: 50,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      'Submit',
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
            ],
          ),
        ),
      ),
    );
  }
}
