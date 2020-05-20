import 'package:flutter/material.dart';
import 'package:shashank/tut/headerScreen.dart';
import 'package:velocity_x/velocity_x.dart';

class FooterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return VStack([
      30.heightBox,
      VxDevice(
        mobile: VStack([
          "KIET Group of Institutions\nGhaziabad".text.center.white.xl2.make(),
        ],
        crossAlignment: CrossAxisAlignment.center,),
         web: HStack([
           "KIET Group of Institutions\nGhaziabad".text.center.white.xl2.make(),
         ],
         alignment: MainAxisAlignment.spaceAround,).w(context.safePercentWidth*70),
         ),
         40.heightBox,
         SocialAccounts(),
         20.heightBox

    ],
    crossAlignment: CrossAxisAlignment.center
    );
  }
}