import 'package:flutter/material.dart';

class Trip extends StatefulWidget {
  @override
  _TripState createState() => _TripState();
}

class _TripState extends State<Trip> {
  var selectedType;
  List<String> entryStation = <String>[
    'goro',
    'megenagna',
    'bole',
    'tulu-dimty',
    'kasanchis'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "bus ticket",
        ),
        centerTitle: true,
      ),
      body: Container(
        // height: MediaQuery.of(context).size.height,
        // width: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          // shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage('images/ticket_bg.jpg'),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(children: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
            // color: Colors.lightBlueAccent,
            child: Center(
              child: Column(children: <Widget>[
                Container(
                  width: 100,
                  height: 100,
                  // margin: EdgeInsets.only(top: 30),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('images/blueBusIcon.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ]),
            ),
          ),
          Container(
            color: Colors.white,
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.add_road,
                  color: Colors.black,
                  size: 20,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  " Route Name",
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                Expanded(
                  child: DropdownButtonHideUnderline(
                    child: ButtonTheme(
                      alignedDropdown: true,
                      child: DropdownButton(
                        items: entryStation
                            .map((value) => DropdownMenuItem(
                                child: Text(
                                  value,
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                                value: value))
                            .toList(),
                        onChanged: (selectedStationType) {
                          setState(() {
                            selectedType = selectedStationType;
                          });
                        },
                        value: selectedType,
                        hint: Text("Select Route"),
                        // isExpanded: false,
                        autofocus: true,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            color: Colors.white,
            child: Row(
              children: <Widget>[
                Icon(Icons.east_sharp),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "From",
                  style: TextStyle(color: Colors.blue, fontSize: 18),
                ),
                Expanded(
                  child: DropdownButtonHideUnderline(
                    child: ButtonTheme(
                      colorScheme: ColorScheme.dark(),
                      alignedDropdown: true,
                      child: DropdownButton(
                        items: entryStation
                            .map((value) => DropdownMenuItem(
                                child: Text(
                                  value,
                                  style: TextStyle(),
                                ),
                                value: value))
                            .toList(),
                        onChanged: (selectedStationType) {
                          setState(() {
                            selectedType = selectedStationType;
                          });
                        },
                        value: selectedType,
                        hint: Text(" Enter Entry Station"),
                        // isExpanded: false,
                        autofocus: true,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            color: Colors.white,
            child: Row(
              children: <Widget>[
                Icon(Icons.ac_unit_outlined),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "to",
                  style: TextStyle(color: Colors.blue, fontSize: 18),
                ),
                Expanded(
                  child: DropdownButtonHideUnderline(
                    child: ButtonTheme(
                      colorScheme: ColorScheme.dark(),
                      alignedDropdown: true,
                      child: DropdownButton(
                        items: entryStation
                            .map((value) => DropdownMenuItem(
                                child: Text(
                                  value,
                                  style: TextStyle(),
                                ),
                                value: value))
                            .toList(),
                        onChanged: (selectedStationType) {
                          setState(() {
                            selectedType = selectedStationType;
                          });
                        },
                        value: selectedType,
                        hint: Text("Entry Destination Station"),
                        // isExpanded: false,
                        autofocus: true,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Container(
                height: 50,
                width: 400,
                child: FlatButton(
                    color: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0)),
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   new MaterialPageRoute(
                      //       builder: (context) => MainHome()),
                      // );
                    },
                    child: Text(
                      "Buy ticket",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    )),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
