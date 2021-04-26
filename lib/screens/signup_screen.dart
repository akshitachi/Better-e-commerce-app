import 'package:e_commerce2/widgets/signup.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _auth = FirebaseAuth.instance;
  void _submitAuthForm(
    String email,
    String password,
    BuildContext ctx,
  ) async {
    AuthResult authResult;
    try {
      authResult = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      await Firestore.instance
          .collection('users')
          .document(authResult.user.uid)
          .setData(
        {
          'email': email,
        },
      );
    } on PlatformException catch (err) {
      var message = 'An error occured, please check your credentials!';
      if (err.message != null) {
        message = err.message;
      }
      Scaffold.of(ctx).showSnackBar(
        SnackBar(
          content: Text(message),
          backgroundColor: Theme.of(ctx).errorColor,
        ),
      );
    }
  }

  final routeName = '/sign-up';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SignUp(
          _submitAuthForm,
        ),
      ),
    );
  }
}
