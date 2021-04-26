import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  SignUp(this.submitFn);
  final void Function(
    String email,
    String password,
    BuildContext ctx,
  ) submitFn;

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
  final _passwordController = TextEditingController();

  String _userEmail = '';
  String _userPassword = '';
  void _trySubmit() {
    final isValid = _formKey.currentState.validate();
    FocusScope.of(context).unfocus();
    if (isValid) {
      _formKey.currentState.save();
      widget.submitFn(
        _userEmail.trim(),
        _userPassword.trim(),
        context,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(40),
                    ),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 3.0,
                        spreadRadius: 0.8,
                        offset: Offset(0.5, 0.5),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 50,
                  left: 30,
                  child: Text(
                    'app name',
                    style: TextStyle(
                      color: Color(0xff4C52F0),
                      fontSize: 25,
                      fontWeight: FontWeight.normal,
                      letterSpacing: 1,
                    ),
                  ),
                )
              ],
            ),
            Form(
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.all(40.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Text(
                        'Email id',
                        style: TextStyle(
                          fontSize: 10,
                          color: Color(0xff9094F5),
                        ),
                      ),
                    ),
                    Material(
                      borderRadius: BorderRadius.circular(30),
                      elevation: 5,
                      shadowColor: Colors.grey,
                      child: TextFormField(
                        validator: (value) {
                          if (value.isEmpty || !value.contains('@')) {
                            return 'Please enter a valid email address';
                          }
                          return null;
                        },
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide.none,
                          ),
                        ),
                        onSaved: (value) {
                          _userEmail = value;
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Text(
                        'Password',
                        style: TextStyle(
                          fontSize: 10,
                          color: Color(0xff9094F5),
                        ),
                      ),
                    ),
                    Material(
                      borderRadius: BorderRadius.circular(30),
                      elevation: 5,
                      shadowColor: Colors.grey,
                      child: TextFormField(
                        controller: _passwordController,
                        validator: (value) {
                          if (value.isEmpty || value.length < 7) {
                            return 'Password must be atleast 7 characters long';
                          }
                          return null;
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                        ),
                        onSaved: (value) {
                          _userPassword = value;
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Text(
                        'Re-enter password',
                        style: TextStyle(
                          fontSize: 10,
                          color: Color(0xff9094F5),
                        ),
                      ),
                    ),
                    Material(
                      borderRadius: BorderRadius.circular(30),
                      elevation: 5,
                      shadowColor: Colors.grey,
                      child: TextFormField(
                        validator: (value) {
                          if (value != _passwordController.text) {
                            return 'Passwords do not match!';
                          }
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
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
                          onPressed: _trySubmit,
                          child: Text(
                            'SignUp',
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        FlatButton(
                          onPressed: () {},
                          child: Text(
                            'forgot password',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.all(16),
                      child: Center(
                        child: Container(
                          height: 10,
                          width: 50,
                          child:
                              Image.asset('assets/images/Rectangle 1611.png'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20.0,
                        right: 20.0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: IconButton(
                              icon: Image.asset(
                                'assets/images/facebook.png',
                              ),
                              onPressed: () {},
                            ),
                          ),
                          Expanded(
                            child: IconButton(
                              icon: Image.asset(
                                'assets/images/google.png',
                              ),
                              onPressed: () {},
                            ),
                          ),
                          Expanded(
                            child: IconButton(
                              icon: Image.asset(
                                'assets/images/twitter.png',
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.03,
                    ),
                    Center(
                      child: Container(
                        width: double.infinity,
                        height: 50,
                        child: RaisedButton(
                          onPressed: () {
                            Navigator.of(context)
                                .pushReplacementNamed('/sign-in');
                          },
                          child: Text(
                            'SignIn',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          color: Color(0xffBCE0FD),
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
          ],
        ),
      ),
    );
  }
}
