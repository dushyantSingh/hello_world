import 'package:flutter/material.dart';
import 'package:hello_world/model/person.dart';

class PersonList extends Column {
  PersonList(this.personList);

  final List<Person> personList;

  @override
  MainAxisAlignment get mainAxisAlignment => MainAxisAlignment.start;
  @override
  List<Widget> get children => <Widget>[
        Expanded(
            child: ListView.builder(
                itemCount: personList.length,
                itemBuilder: (BuildContext ctxt, int index) {
                  final Person currentPerson = personList[index];
                  return Container(
                    padding: const EdgeInsets.all(20.0),
                    margin: const EdgeInsets.only(
                        left: 10.0, right: 10.0, top: 5.0, bottom: 5.0),
                    color: Colors.green,
                    child: Text(currentPerson.name.toString()),
                  );
                })),
      ];
}
