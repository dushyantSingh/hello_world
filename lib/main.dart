import 'package:flutter/material.dart';
import 'app_bar.dart';
import 'pages/home/home.dart';

void main() {
  runApp(MyApp());
}

String greeting() {
  return 'Hello';
}

class MyApp extends MaterialApp {
  @override
  Widget get home => MyScaffold();
}

class MyScaffold extends Scaffold {
  @override
  PreferredSizeWidget get appBar => MyAppBar(greeting());
  @override
  Widget get body => HomePage();
}

// class FloatingButton extends FloatingActionButton {
//   @override
//   Widget get child => const Center(
//         child: Icon(Icons.add_a_photo, color: Colors.white),
//       );
//   @override
//   Null Function() get onPressed => () {
//         print('Clicked');
//       };
//   @override
//   Color get backgroundColor => primaryColor();
// }

// class MyRow extends Row {
//   @override
//   MainAxisAlignment get mainAxisAlignment => MainAxisAlignment.spaceAround;

//   @override
//   CrossAxisAlignment get crossAxisAlignment => CrossAxisAlignment.end;

//   @override
//   List<Widget> get children => [
//         Expanded(
//           flex: 4,
//           child: Container(
//             color: Colors.orange,
//             padding: const EdgeInsets.all(30.0),
//             child: const Text('1'),
//           ),
//         ),
//         Expanded(
//           flex: 3,
//           child: Container(
//             color: Colors.pink,
//             padding: const EdgeInsets.all(30.0),
//             child: const Text('2'),
//           ),
//         ),
//         Expanded(
//           flex: 2,
//           child: Container(
//             color: Colors.purple,
//             padding: const EdgeInsets.all(30.0),
//             child: const Text('3'),
//           ),
//         )
//       ];
// }

// class MyColumn extends Column {
//   @override
//   MainAxisAlignment get mainAxisAlignment => MainAxisAlignment.start;
//   @override
//   CrossAxisAlignment get crossAxisAlignment => CrossAxisAlignment.stretch;
//   @override
//   List<Widget> get children => [
//         Container(
//             padding: const EdgeInsets.only(left: 10, right: 10),
//             child: MyRow()),
//         Container(
//           padding: const EdgeInsets.all(20.0),
//           margin: const EdgeInsets.only(
//               left: 10.0, right: 10.0, top: 5.0, bottom: 5.0),
//           color: primaryColor(),
//           child: const Text('Primary'),
//         ),
//         Container(
//           padding: const EdgeInsets.all(10.0),
//           margin: const EdgeInsets.only(
//               left: 10.0, right: 10.0, top: 5.0, bottom: 5.0),
//           color: Colors.blue,
//           child: const Text('Blue'),
//         ),
//         Container(
//           padding: const EdgeInsets.all(30.0),
//           margin: const EdgeInsets.only(
//               left: 10.0, right: 10.0, top: 5.0, bottom: 5.0),
//           color: Colors.green,
//           child: const Text('Green'),
//         ),
//       ];
// }
