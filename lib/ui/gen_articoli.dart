import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'articolo.dart';

class ArticleList extends StatefulWidget {
  @override
  _ArticleListState createState() => _ArticleListState();
}

class _ArticleListState extends State<ArticleList> {
  Future get _getPosts async{
    var firestore = Firestore.instance;

    QuerySnapshot qn = await firestore.collection('tecniche').getDocuments();

    return qn.documents;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder(
        future: _getPosts,
        builder: (context, snapshot){
          if(snapshot.connectionState == ConnectionState.waiting){
            return Center(
              child: Text('Loading'),
            );
          } else {
            return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (context, index){
                return ListTile(
                  title: Text(snapshot.data[index].data['titolo']),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) => Articolo(articolo: snapshot.data[index],)
                    ));
                  },
                );
              },
            );
          }
        },
      ),
    );
  }
}