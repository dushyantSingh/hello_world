import 'dart:developer';

import 'package:flutter/material.dart';

class PersonList extends Column {
  @override
  // TODO: implement mainAxisAlignment
  MainAxisAlignment get mainAxisAlignment => MainAxisAlignment.start;
  @override
  // TODO: implement children
  List<Widget> get children => [
        Expanded(
          child: ListView.builder(
              itemCount: 24,
              itemBuilder: (BuildContext ctxt, int index) {
                return new Container(
                  padding: EdgeInsets.all(20.0),
                  margin: EdgeInsets.only(
                      left: 10.0, right: 10.0, top: 5.0, bottom: 5.0),
                  color: Colors.green,
                  child: Text('Person'),
                );
              }),
        ),
      ];
}
