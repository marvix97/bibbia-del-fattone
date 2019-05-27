import 'package:flutter/material.dart';

import 'colors.dart';

class Tecniche extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainGreen,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: yellowText,),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'Tecniche di coltivazione',
          style: TextStyle(
            color: yellowText,
          ),
        ),
      ),
    );
  }
}