import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';

String _validateSpecialreguest(String value) {
  value = value.trim();
  if (value.length == 0) {
    return "Please enter a Reason.";
  } else if (value.length < 10) {
    return "Reason should be minimum 10 characters.";
  } else if (value.length > 255) {
    return "Reason must be less than 255 characters.";
  } else {
    return null;
  }
}

class SCDialogs {
  static Future<String> specialReguestDialog (
      BuildContext context, MediaQueryData queryData) {
    bool _autoCorrectCheck = false;
    final FocusNode _reasonFocus = FocusNode();
    TextEditingController controller = TextEditingController();
    return showDialog<String>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(32.0))),
          title: Container(
            height: 260.0,
            width: 260.0,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5.0),
                    child: Text(
                      'Do You have any special request for your drink?',
                      style: TextStyle(
                          fontFamily: 'sedgwick',
                          fontWeight: FontWeight.normal,
                          fontSize: 20.0),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                    child: TextFormField(
                      maxLines: 3,
                      autovalidate: _autoCorrectCheck,
                      focusNode: _reasonFocus,
                      controller: controller,
                      enableInteractiveSelection: false,
                      style: TextStyle(color: Colors.black),
                      validator: _validateSpecialreguest,
                      decoration: InputDecoration(
                        contentPadding: new EdgeInsets.symmetric(
                            vertical: queryData.size.height / 70.0,
                            horizontal: 10.0),
                        filled: true,
                        hintMaxLines: 3,
                        labelText:
                            'Example:- Sugar free tea Extra sugar, cold water, hot water, Strong coffee, etc ',
                        errorMaxLines: 2,
                        labelStyle:
                            TextStyle(fontSize: 16.0, color: Colors.black),
                      ),
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Container(
                        child: RaisedButton(
                          onPressed: () {
                            // if (_validateSpecialreguest(controller.text) !=
                            //     null) {
                            //   setState(() {
                            //     _autoCorrectCheck = true;
                            //     _reasonFocus.nextFocus();
                            //   });
                            // } else {
                            //   Navigator.of(context).pop(controller.text);
                            // }
                          },
                          padding: EdgeInsets.only(right: 15, left: 15),
                          color: Theme.of(context).primaryColor,
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(50.0),
                          ),
                          child: Text(
                            "No thanks",
                            style: TextStyle(
                                fontSize: 16.0,
                                fontFamily: 'roboto',
                                color: Colors.white),
                          ),
                        ),
                      ),
                      Container(
                        child: RaisedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          padding: EdgeInsets.only(right: 15, left: 15),
                          color: Colors.red,
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(50.0),
                          ),
                          child: Text(
                            "Yes, Submit ",
                            style: TextStyle(
                                fontSize: 16.0,
                                fontFamily: 'roboto',
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
