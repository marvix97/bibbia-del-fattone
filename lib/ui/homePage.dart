import 'package:flutter/material.dart';

import 'drawer.dart';
import '../common.dart';
import 'colors.dart';

class HomePageUI extends StatefulWidget {
  @override
  _HomePageUIState createState() => _HomePageUIState();
}

class _HomePageUIState extends State<HomePageUI> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text(
            title,
            style: TextStyle(
              color: yellowText,
            ),
          ),
        leading: IconButton(
          icon: Icon(Icons.menu, color: yellowText,),
          onPressed: (){
            _scaffoldKey.currentState.openDrawer();
          },
        ),
        backgroundColor: mainGreen,
      ),
      drawer: DrawerUI(),
    );
  }
}