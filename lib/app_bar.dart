import 'package:flutter/material.dart';

import 'appColor.dart';
import 'theme/theme.dart';

class MyAppBar extends AppBar {
  MyAppBar(this.text);
  final String text;

  @override
  Widget get title => Text(
        text,
        style: appBarTextStyle,
      );
  @override
  bool get centerTitle => true;
  @override
  double get titleSpacing => 4;
  @override
  Color get backgroundColor => primaryColor();
}
