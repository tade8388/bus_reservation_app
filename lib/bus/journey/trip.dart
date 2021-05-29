import 'package:flutter/material.dart';

class Trip extends StatefulWidget {
  @override
  _TripState createState() => _TripState();
}

class _TripState extends State<Trip> {
  List<String> entryStation = <String>['goro', 'megenagna', 'bole'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "bus ticket",
        ),
        centerTitle: true,
      ),
      body: Column(children: <Widget>[
        Container(
          padding: EdgeInsets.all(20),
          color: Colors.lightBlueAccent,
          child: Center(
            child: Column(children: <Widget>[
              Container(
                width: 100,
                height: 100,
                // margin: EdgeInsets.only(top: 30),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('images/1.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Text(
                "tadese Matebie",
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
              Text(
                "tade@gmail.com",
                style: TextStyle(color: Colors.white),
              ),
            ]),
          ),
        ),
        Row(
          children: <Widget>[
            Icon(
              Icons.call_made_rounded,
            ),
            SizedBox(
              width: 50,
            ),
            DropdownButton(
                items: entryStation
                    .map((e) => DropdownMenuItem(
                          child: Text(
                            e,
                            style: TextStyle(color: Colors.red),
                          ),
                        ))
                    .toList()),
          ],
        )
      ]),
    );
  }
}
