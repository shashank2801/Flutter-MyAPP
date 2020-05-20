import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shashank/ui/colors.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:url_launcher/url_launcher.dart';

class HeaderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: VxBox(
        child: VStack([
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
            30.heightBox,
            Center(child: PictureWidget()),
            Center(
              child: Row(
                children: [
                VStack([
                  if(context.isMobile) 25.heightBox else 10.heightBox,
                  "Shashank \n Singhal".text.white.xl5.lineHeight(1).size(context.isMobile ? 15:20).bold.make().shimmer(primaryColor: primaryRed),
                  20.heightBox,
                  SocialAccounts(),
                  30.heightBox,
                  "About Me".text.yellow700.xl3.lineHeight(1).bold.make(),
                  10.heightBox,
                  "A super active individual with the zeal to\nlearn everything I can.To limit myself\nto just certain thing is to do injustice\nwith myself.Looking for a nice\nwork-environment to get a hands-on\nexperience on modern tech.".text.white.make(),
                  ]).pSymmetric(
                  h: context.percentWidth * 10,
                  v: 32
                ),
              ],),
            ),
          ])
        ])).make(),
    );
  }
}


class PictureWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transform(
      alignment: Alignment.center,
      transform: Matrix4.rotationX(0),
      child: CircleAvatar(
              child: Image.asset("assets/images/sha.png",
        fit: BoxFit.fill,
        height: context.percentHeight*40,
        ),
        maxRadius: 90.0,
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Icon(Icons.person,color: primaryRed,size: 50.0,);
  }
}

class SocialAccounts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return [
      Icon(FontAwesomeIcons.instagram, color: Colors.white).mdClick((){
        launch("https://www.instagram.com/shashank_182");
      }).make(),

      20.widthBox,

      Icon(FontAwesomeIcons.twitter, color: Colors.white).mdClick((){
        launch("https://www.twitter.com/Shashan77386348");
      }).make(),

      20.widthBox,

      Icon(FontAwesomeIcons.linkedinIn, color: Colors.white).mdClick((){
        launch("https://www.linkedin.com/in/shashank-singhal-984014185/");
      }).make(),

    ].hStack();
  }
}

class Introduction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return VStack([
                  "-Introduction".text.gray500.make(),
                  10.heightBox,
                  "@Flutter Feveloper \n @Content Writer \n @Competetive Programmer"
                  .text
                  .white
                  .xl6
                  .maxLines(5)
                  .make()
                  .w(context.isMobile? context.screenWidth : context.percentWidth*40),
                  20.heightBox,
                ]);
  }
}