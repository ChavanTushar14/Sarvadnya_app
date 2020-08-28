import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:async';

import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'maincontent_5.dart';


class ListPage_5 extends StatefulWidget {
  @override
  _ListPage_5State createState() => _ListPage_5State();
}

class _ListPage_5State extends State<ListPage_5> {

  Future getUsers() async{
    var firestore = Firestore.instance;
    QuerySnapshot qn = await firestore.collection("economy").getDocuments();

    return qn.documents;

  }
   navigateToMyHomePage_5(DocumentSnapshot user){
     Navigator.push(context, MaterialPageRoute(builder: (context)=> MyHomePage_5(user: user,)));

   }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder(
        future: getUsers(),
        builder: ( BuildContext context,snapshot ){
        if (snapshot.connectionState == ConnectionState.waiting){
          return Center(
                     child: SpinKitWave(color: Colors.blueAccent, type: SpinKitWaveType.start),

          );
          }
          else{
            return ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: snapshot.data.length,
              itemBuilder: (_, index){
                return Container(
                  child: Card(elevation: 10.0,
                    child:  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                    
                      ListTile(
                        leading: Image.network(snapshot.data[index]["imageurl"],
                        height: 300,width: 100, fit: BoxFit.fill,
                        ),
                        // leading: CircleAvatar(
                        //   backgroundImage: NetworkImage(snapshot.data[index]["imageurl"]),
                        //   maxRadius: 50.0,
                        // ),
                        contentPadding: EdgeInsets.only(left:20.0),
                        title: Padding(
                          padding: EdgeInsets.only(left:10.0,bottom: 50.0,top: 10.0),
                          child: Text(snapshot.data[index]["title"],
                          style: TextStyle( fontSize: 20.0, fontWeight: FontWeight.bold,

                          )
                          ),
                        ),
                  
                        subtitle: Padding(
                          padding: const EdgeInsets.only(left:50.0,bottom: 10.0,top: 20.0),
                          child: Text(snapshot.data[index]["content"]),
                        ),
                         
                        
                  
                        onTap: () => navigateToMyHomePage_5(snapshot.data[index]),
                               ),
                    ],
                  )),
                );
                
                

              });

          }

      }),
      
    );
  }
}
