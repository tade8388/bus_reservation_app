import 'package:bus_reservation_app/bus/sign_in.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      routes: {
        // '/': (context) => Home1(),
        '/': (context) => SignIn(),
      },
      debugShowCheckedModeBanner: false,
    ));
