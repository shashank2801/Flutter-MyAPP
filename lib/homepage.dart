import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shashank/tut/headerScreen.dart';
import 'package:shashank/tut/middleScreen.dart';
import 'package:shashank/tut/tut_Homepage.dart';
import 'package:shashank/ui/colors.dart';


import './body.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //     automaticallyImplyLeading: false,
      //     title: Text('Shashank'),
      //     actions: <Widget>[
      //       IconButton(
      //       icon: Icon(Icons.calendar_today),
      //       tooltip: "Important Days",
      //       onPressed: ()=>{}
      //       )
      //     ],
      //   ),
        
      body: new TabBarView(
        children: <Widget>[
              Body(),
              HeaderScreen(),
              MiddleScreen(),
              Homescreen(), 
        ],

        controller: tabController,
      ),
      bottomNavigationBar: Material(
        color: primaryRedDark,
        child: TabBar(

          indicatorWeight: 5.0,
        controller: tabController,
          tabs: <Widget>[
            Tab(icon:Icon(FontAwesomeIcons.smile,size: 18.0,),),
            Tab(icon: Icon(Icons.photo_album),),
            Tab(icon: Icon(FontAwesomeIcons.book,size: 18.0,),),
            Tab(icon: Icon(Icons.person_pin)),
          ]),
      ),
    );
  }
}