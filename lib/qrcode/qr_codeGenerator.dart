import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class Qr_Generator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("pllease read  the qr code to the scaner"),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 30),
              child: Center(
                child: QrImage(
                  data: "1234",
                  size: 200,
                  version: QrVersions.auto,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
