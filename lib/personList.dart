import 'package:flutter/material.dart';
import 'package:hello_world/model/person.dart';

class PersonList extends Column {
  final Future<List<Person>> personList;

  PersonList(this.personList);

  @override
  MainAxisAlignment get mainAxisAlignment => MainAxisAlignment.start;
  @override
  List<Widget> get children => [
        Expanded(
          child: FutureBuilder(
            future: this.personList,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                    itemCount: snapshot.data.length,
                    itemBuilder: (BuildContext ctxt, int index) {
                      var currentPerson = snapshot.data[index];
                      return new Container(
                        padding: EdgeInsets.all(20.0),
                        margin: EdgeInsets.only(
                            left: 10.0, right: 10.0, top: 5.0, bottom: 5.0),
                        color: Colors.green,
                        child: Text(currentPerson.name.toString()),
                      );
                    });
              } else if (snapshot.hasError) {
                return Card(child: Text("${snapshot.error}"));
              }
              return CircularProgressIndicator();
            },
          ),
        ),
      ];
}
