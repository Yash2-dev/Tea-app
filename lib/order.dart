import 'package:flutter/material.dart';
import 'package:sweetalert/sweetalert.dart';
import 'alert_dialogs/dialog.dart';

class Order extends StatefulWidget {
  @override
  _OrderState createState() => _OrderState();
}

class _OrderState extends State<Order> {
  String dropdownValue = 'Select Location';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "ORDER",
          style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(
          vertical: 10.0,
          horizontal: 30.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0),
              child: Text(
                "SELECT ITEM OF YOUR CHOICE: ",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: RawMaterialButton(
                      fillColor: Colors.white,
                      elevation: 2.0,
                      onPressed: () => {},
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        children: <Widget>[
                          Icon(
                            Icons.timer,
                            size: 40.0,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 5.0),
                          ),
                          Text(
                            "Tea",
                            style: TextStyle(
                              fontSize: 18.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                  ),
                  Expanded(
                    child: RawMaterialButton(
                      fillColor: Colors.white,
                      elevation: 2.0,
                      onPressed: () => {},
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        children: <Widget>[
                          Icon(
                            Icons.timer,
                            size: 40.0,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 5.0),
                          ),
                          Text(
                            "Coffee",
                            style: TextStyle(
                              fontSize: 18.0,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                  ),
                  Expanded(
                    child: RawMaterialButton(
                      fillColor: Colors.pinkAccent,
                      elevation: 2.0,
                      onPressed: () => {},
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        children: <Widget>[
                          Icon(
                            Icons.timer,
                            size: 40.0,
                            color: Colors.white,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 5.0),
                          ),
                          Text(
                            "Water",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0),
              child: Text(
                "TIME",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: RawMaterialButton(
                      elevation: 0.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        side: BorderSide(
                          width: 0.5,
                          color: Colors.pinkAccent,
                        ),
                      ),
                      fillColor: Colors.pinkAccent,
                      onPressed: () => {},
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        "5 mins",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                  ),
                  Expanded(
                    child: RawMaterialButton(
                      elevation: 0.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        side: BorderSide(
                          width: 0.5,
                          color: Colors.pinkAccent,
                        ),
                      ),
                      fillColor: Colors.white,
                      onPressed: () => {},
                      padding: EdgeInsets.all(10.0),
                      child: Text("10 mins"),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                  ),
                  Expanded(
                    child: RawMaterialButton(
                      elevation: 0.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        side: BorderSide(
                          width: 0.5,
                          color: Colors.pinkAccent,
                        ),
                      ),
                      fillColor: Colors.white,
                      onPressed: () => {},
                      padding: EdgeInsets.all(10.0),
                      child: Text("15 mins"),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 10.0,
              ),
              child: Text(
                "MORE",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 5.0,
              ),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10.0,
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      isExpanded: true,
                      value: dropdownValue,
                      onChanged: (String newValue) {
                        setState(() {
                          dropdownValue = newValue;
                        });
                      },
                      items: <String>[
                        'Select Location',
                        'Lab 1',
                        'Lab 2',
                        'Lab 3',
                        'Lab 4'
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 5.0,
                horizontal: 5.0,
              ),
              child: SizedBox(
                width: double.infinity,
                height: 45.0,
                child: RawMaterialButton(
                  onPressed: () {
                    SCDialogs.specialReguestDialog(context, MediaQuery.of(context));
                  },
                  fillColor: Colors.white,
                  child: Text(
                    "Special Requests",
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                    
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0.0,
        child: ButtonBar(
          alignment: MainAxisAlignment.center,
          children: <Widget>[
            RawMaterialButton(
              constraints: BoxConstraints.expand(
                height: 50.0,
                width: 130.0,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40.0),
              ),
              fillColor: Colors.grey,
              onPressed: () => {},
              padding: EdgeInsets.all(10.0),
              child: Text(
                "RESET",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                ),
              ),
            ),
            RawMaterialButton(
              constraints: BoxConstraints.expand(
                height: 50.0,
                width: 130.0,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40.0),
              ),
              fillColor: Colors.pinkAccent,
              onPressed: () => {},
              padding: EdgeInsets.all(10.0),
              child: Text(
                "ORDER NOW",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
