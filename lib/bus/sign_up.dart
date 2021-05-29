import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("signed up"),
      ),
      body: Container(
        alignment: Alignment.topLeft,
        child: Text(
          "well-come to sign in page",
          style: TextStyle(color: Colors.green, fontSize: 30),
        ),
      ),
    );
  }
}
