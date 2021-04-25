import 'package:e_commerce2/widgets/auth_form.dart';
import 'package:e_commerce2/widgets/signup.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _auth = FirebaseAuth.instance;
  void _submitAuthForm(
    String email,
    String password,
  ) async {
    UserCredential authResult;
    authResult = await _auth.createUserWithEmailAndPassword(
        email: email, password: password);
  }

  final routeName = '/sign-up';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SignUp(),
      ),
    );
  }
}
