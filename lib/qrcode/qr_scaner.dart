// import 'dart:ffi';

// import 'package:flutter/material.dart';
// import 'package:qr_code_scanner/qr_code_scanner.dart';

// class Qr_Scanner extends StatefulWidget {
//   @override
//   _Qr_ScannerState createState() => _Qr_ScannerState();
// }

// class _Qr_ScannerState extends State<Qr_Scanner> {
//   final qrKey = GlobalKey(debugLabel: "QR");
//   QRViewController controler;
//   @override
//   Void dispose() {
//     controler?.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         alignment: Alignment.center,
//         children: <Widget>[
//           buildQrView(context),
//         ],
//       ),
//     );
//   }

//   buildQrView(BuildContext context) => QRView(
//         key: qrKey,
//         onQRViewCreated: onQRViewCreated,
//       );
//   void onQRViewCreated(QRViewController controller) {
//     setState(() => this.controler = controller);
//   }
// }
