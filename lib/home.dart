import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home_1.dart';
import 'technology.dart';
import 'health.dart';
import 'economy.dart';
import 'skills.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sarvadnya",
          style: GoogleFonts.roboto(),
        ),
        actions: <Widget>[
          //IconButton(icon: Icon(Icons.search,
          //color: Colors.white,), onPressed:(){}),
          // IconButton(icon: Icon(Icons.more_vert,
          // color: Colors.white,), onPressed:(){}),
        ],
        bottom: TabBar(
          controller: _tabController,
          indicatorSize: TabBarIndicatorSize.label,
          indicatorPadding: EdgeInsets.zero,
          labelStyle: TextStyle(fontSize: 5.0),
          isScrollable: true,
          tabs: <Widget>[
            Container(
                alignment: Alignment.center,
                decoration: new BoxDecoration(
                  color: Colors.purple,
                  gradient: new LinearGradient(
                      colors: [Colors.red, Colors.cyan, Colors.yellow],
                      begin: Alignment.centerRight,
                      end: new Alignment(-1.0, -1.0)),
                ),
                child: Tab(
                  child: Text(
                    "TECHNOLOGY",
                    style: Theme.of(context).textTheme.button,
                  ),
                )),
            Container(
                alignment: Alignment.center,
                decoration: new BoxDecoration(
                  color: Colors.purple,
                  gradient: new LinearGradient(
                    colors: [Colors.red, Colors.cyan, Colors.yellow],
                    begin: Alignment.centerRight,
                    end: new Alignment(-1.0, -1.0),
                  ),
                ),
                child: Tab(
                  child: Text(
                    "HOME",
                    style: Theme.of(context).textTheme.button,
                  ),
                )),
            Container(
                alignment: Alignment.center,
                decoration: new BoxDecoration(
                  color: Colors.purple,
                  gradient: new LinearGradient(
                      colors: [Colors.red, Colors.cyan],
                      begin: Alignment.centerRight,
                      end: new Alignment(-1.0, -1.0)),
                ),
                child: Tab(
                  child: Text(
                    "SKILLS",
                    style: Theme.of(context).textTheme.button,
                  ),
                )),
            Container(
                alignment: Alignment.center,
                decoration: new BoxDecoration(
                  color: Colors.purple,
                  gradient: new LinearGradient(
                      colors: [Colors.red, Colors.cyan, Colors.yellow],
                      begin: Alignment.centerRight,
                      end: new Alignment(-1.0, -1.0)),
                ),
                child: Tab(
                  child: Text(
                    "HEALTH",
                    style: Theme.of(context).textTheme.button,
                  ),
                )),
            Container(
                alignment: Alignment.center,
                decoration: new BoxDecoration(
                  color: Colors.purple,
                  gradient: new LinearGradient(
                      colors: [Colors.red, Colors.cyan, Colors.yellow],
                      begin: Alignment.centerRight,
                      end: new Alignment(-1.0, -1.0)),
                ),
                child: Tab(
                  child: Text(
                    "ECONOMY",
                    style: Theme.of(context).textTheme.button,
                  ),
                )),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          Technology(),
          Home_1(),
          Skill(),
          Health(),
          Economy(),
        ],
      ),
      //     if () {
      //     floatingActionButton: FloatingActionButton(
      //   backgroundColor: Theme.of(context).accentColor,
      //   child: Icon(Icons.message,
      //   color: Colors.white,
      //   ),
      //   onPressed: (){},
      // )

      //   }

      // floatingActionButton: FloatingActionButton(
      //   backgroundColor: Theme.of(context).accentColor,
      //   child: Icon(Icons.message,
      //   color: Colors.white,
      //   ),
      //   onPressed: (){},
      // ),
    );
  }
}
