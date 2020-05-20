import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class MiddleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Vx.red700,
      child: Flex(
        direction: context.isMobile? Axis.vertical: Axis.horizontal,
        children: [
          "Skills".richText.xl4.make(),
          Expanded(
            child: VxSwiper(
              items:[
                ProjectWidget(title: "C++ Programming"),
                ProjectWidget(title: "Competetive Programming"),
                ProjectWidget(title: "Flutter"),
                ProjectWidget(title: "Web Development"),
                ProjectWidget(title: "Creative Writing"),
              ],
              height: 170,
              viewportFraction: context.isMobile? 0.75 : 0.4,
              enlargeCenterPage: true,
              autoPlay: true,
              autoPlayAnimationDuration: 1.seconds,
              ),
          )
        ],
      ).p16().h(context.isMobile? 400 : 300)
    );
  }
}

class ProjectWidget extends StatelessWidget {
  final String title;

  const ProjectWidget({Key key,@required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return title
    .text
    .bold
    .black
    .xl
    .wide
    .center
    .make()
    .box
    .p8
    .roundedLg
    .alignCenter
    .square(200).
    neumorphic(color: Vx.white,elevation: 5.0, curve: VxCurve.flat)
    .make()
    .p16();
  }
}