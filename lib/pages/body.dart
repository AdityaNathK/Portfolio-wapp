import 'package:flutter/material.dart';
import 'package:portfolio_aditya/utils/themedata.dart';
import 'package:velocity_x/velocity_x.dart';

class BodySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Vx.warmGray900,
      child: Flex(
        direction: context.isMobile ? Axis.vertical : Axis.horizontal,
        children: [
          "My Projects\n"
              .richText
              .xl4
              .white
              .make(),
          20.widthBox,
          Expanded(
            child: VxSwiper(
              items: [
                ProjectWidget(title: "BMI Calculator"),
                ProjectWidget(title: "CoVid Tracker"),
                ProjectWidget(title: "MoonEye Website"),
                ProjectWidget(title: "Yes No Maybe App"),
                ProjectWidget(title: "Family Connectivity App"),
              ],
              height: 170,
                enlargeCenterPage: true,
                viewportFraction: context.isMobile?0.75:0.4,
              autoPlay: true,
              autoPlayAnimationDuration: 1.seconds,
            ),
          ),
        ],
      ).p64().h(context.isMobile ? 400 : 300).w(context.screenWidth),
    );
  }
}

class ProjectWidget extends StatelessWidget {
  final String title;

  const ProjectWidget({required this.title});

  @override
  Widget build(BuildContext context) {
    return title.text.bold.white.xl.wide.center
        .make()
        .box
        .p8
        .roundedLg
        .alignCenter
        .square(200).color(ThemeColors.mainColor)
        .make()
        .p16();
  }
}
