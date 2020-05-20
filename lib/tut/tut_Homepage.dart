import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'footerScreen.dart';
import 'headerScreen.dart';
import 'middleScreen.dart';

class Homescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
        HeaderScreen(),
        MiddleScreen(),
        FooterScreen(),
        ]
      ).scrollVertical(),
    );
  }
}
