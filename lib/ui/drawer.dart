import 'package:flutter/material.dart';

import '../common.dart' as common;
import 'colors.dart';
import 'tecniche.dart';

class DrawerUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(common.title),
                ],
              ),
              decoration: BoxDecoration(
                color: mainGreen,
              ),
            ),
            ListTile(
              leading: Icon(Icons.explore),
              title: Text('Tecniche di coltivazione'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => Tecniche(),
                ));
              },
            ),
        ],
      ),
    );
  }
}