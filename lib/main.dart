import 'package:flutter/material.dart';
import 'package:hello_world/personList.dart';
import 'appColor.dart';

void main() => runApp(MyApp());

String greeting() {
  return "Hello";
}

String flutterBody() => "Something";

class MyApp extends MaterialApp {
  @override
  Widget get home => MyScaffold();
}

class MyScaffold extends Scaffold {
  @override
  PreferredSizeWidget get appBar => MyAppBar(greeting());
  @override
  Widget get body => BodyContainer();
  @override
  Widget get floatingActionButton => FloatingButton();
}

class MyAppBar extends AppBar {
  final text;
  MyAppBar(this.text);

  @override
  Widget get title => Text(text);
  @override
  bool get centerTitle => true;
  @override
  double get titleSpacing => 4;
  @override
  Color get backgroundColor => primaryColor();
}

class FloatingButton extends FloatingActionButton {
  @override
  Widget get child => Center(
        child: Icon(Icons.add_a_photo, color: Colors.white),
      );
  @override
  get onPressed => () {
        print("Clicked");
      };
  @override
  Color get backgroundColor => primaryColor();
}

class BodyContainer extends Container {
  @override
  Color get color => Colors.cyanAccent.shade100;
  @override
  // TODO: implement child
  Widget get child => Center(child: PersonList());
}

class MyRow extends Row {
  @override
  MainAxisAlignment get mainAxisAlignment => MainAxisAlignment.spaceAround;

  @override
  CrossAxisAlignment get crossAxisAlignment => CrossAxisAlignment.end;

  @override
  List<Widget> get children => [
        Expanded(
          flex: 4,
          child: Container(
            color: Colors.orange,
            padding: EdgeInsets.all(30.0),
            child: Text('1'),
          ),
        ),
        Expanded(
          flex: 3,
          child: Container(
            color: Colors.pink,
            padding: EdgeInsets.all(30.0),
            child: Text('2'),
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            color: Colors.purple,
            padding: EdgeInsets.all(30.0),
            child: Text('3'),
          ),
        )
      ];
}

class MyColumn extends Column {
  @override
  MainAxisAlignment get mainAxisAlignment => MainAxisAlignment.start;
  @override
  CrossAxisAlignment get crossAxisAlignment => CrossAxisAlignment.stretch;
  @override
  List<Widget> get children => [
        Container(
            padding: EdgeInsets.only(left: 10, right: 10), child: MyRow()),
        Container(
          padding: EdgeInsets.all(20.0),
          margin:
              EdgeInsets.only(left: 10.0, right: 10.0, top: 5.0, bottom: 5.0),
          color: primaryColor(),
          child: Text('Primary'),
        ),
        Container(
          padding: EdgeInsets.all(10.0),
          margin:
              EdgeInsets.only(left: 10.0, right: 10.0, top: 5.0, bottom: 5.0),
          color: Colors.blue,
          child: Text('Blue'),
        ),
        Container(
          padding: EdgeInsets.all(30.0),
          margin:
              EdgeInsets.only(left: 10.0, right: 10.0, top: 5.0, bottom: 5.0),
          color: Colors.green,
          child: Text('Green'),
        ),
      ];
}
