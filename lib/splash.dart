import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
import 'package:shashank/ui/colors.dart';

import './homepage.dart';

class Splash extends StatefulWidget{
  _SplashState createState() => new _SplashState();
}

class _SplashState extends State<Splash> with SingleTickerProviderStateMixin{

  Animation<double> animation;
  AnimationController controller;

  void initState(){
    super.initState();

    //animator
    controller = AnimationController(duration: const Duration(seconds: 1), vsync: this);

    animation = Tween<double>(begin: 0, end: 200).animate(controller)..addListener(() {
         setState((){});
       });

    controller.forward();

    //splashscreen 
    Timer(Duration(seconds: 2),
            ()=>Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage())) //route to next page
            );
  }

  Widget build(BuildContext context){
    return new Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: primaryRed),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image(
                        image: AssetImage('assets/images/s.png'), //image
                        height: animation.value,
                        width: animation.value,
                        
                        )
                    ], 
                    ),
                ) 
              )
            ],
          )
        ],
      ),
    );
  }
}