import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';


class DetailPage extends StatefulWidget {
  final DocumentSnapshot user;
  DetailPage({this.user});
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  // navigateTotest(DocumentSnapshot user){
  //    Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailPage(user: user,)));

  //  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
           appBar: AppBar(
             title: Text(widget.user.data()["title"]),
           ),
          body: Container(
        child: Card(
          child: ListTile(
            title: Text(widget.user.data()["title"]),
            subtitle: Text(widget.user.data()["content"] + widget.user.data()["videourl"]),
            // onTap: ()=> Navigator.push(context, MaterialPageRoute(builder:(context) => MyHomePage(), )),
          ),
        ),
        
      ),
    );
  }
}