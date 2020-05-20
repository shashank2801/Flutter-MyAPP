import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body>{

  @override
  Widget build(BuildContext context) {
    return Stack(
        fit: StackFit.expand,
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
              Center(
                  child: Text(
                  "Welcome!",
                  style: GoogleFonts.aBeeZee(
                    textStyle: TextStyle(//fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                   // color: Colors.black87,
                   // backgroundColor: Color(0xFF80DEEA)
                        ),
                    ),
                  ),
              ),
            ],
            ),
        ]
  );
  }
}