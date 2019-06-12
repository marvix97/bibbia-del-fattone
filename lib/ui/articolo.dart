import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Articolo extends StatefulWidget{
  final DocumentSnapshot articolo;

  String titolo;
  @override
  _ArticoloState createState() => _ArticoloState();

  Articolo({this.articolo});
}

class _ArticoloState extends State<Articolo> {
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.articolo.data['titolo']),
      ),
      body: Container(
        child: Text(
          widget.articolo.data['paragrafi'][0],
        ),
      ),
    );
  }
}