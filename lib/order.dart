import 'package:flutter/material.dart';

class Order extends StatefulWidget {
  @override
  _OrderState createState() => _OrderState();
}

class _OrderState extends State<Order> {
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
                            "Water",
                            style: TextStyle(
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
                          color: Colors.black,
                        ),
                      ),
                      fillColor: Colors.white,
                      onPressed: () => {},
                      padding: EdgeInsets.all(10.0),
                      child: Text("5 mins"),
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
                          color: Colors.black,
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
                          color: Colors.black,
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
            ListView(
              children: <Widget>[Text("data")],
            ),
            ),
          ],
        ),
      ),
    );
  }
}
