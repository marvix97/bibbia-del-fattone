import 'package:flutter/material.dart';

import 'common.dart' as common;
import 'ui/homePage.dart';


void main() => runApp(MaterialApp(title: common.title, home: HomePage(),));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomePageUI(),
    );
  }
}