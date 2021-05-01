import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:portfolio_aditya/utils/themedata.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';

class HeaderSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var nameDataWidget = "Aditya Nath"
        .text
        .white
        .xl5
        .lineHeight(1)
        .size(context.isMobile ? 15 : 20)
        .bold
        .make()
        .shimmer();
    var greetingTextWidget = "Hi\nI am"
        .text
        .white
        .xl4
        .lineHeight(1)
        .size(context.isMobile ? 15 : 20)
        .bold
        .make()
        .shimmer(primaryColor: ThemeColors.accentColor);

    return SafeArea(
      child: VxBox(
        child: VStack(
          [
            ZStack(
              [
                // ImageWidget(),
                Row(
                  children: [
                    VStack([
                      if (context.isMobile) 30.heightBox else 10.heightBox,
                      CustomAppBar()
                          .shimmer(primaryColor: ThemeColors.accentColor),
                      20.heightBox,
                      greetingTextWidget,
                      10.heightBox,
                      nameDataWidget,
                      20.heightBox,
                      VxBox()
                          .color(ThemeColors.accentColor)
                          .size(60, 10)
                          .make()
                          .shimmer(primaryColor: ThemeColors.accentColor),
                      30.heightBox,
                      SocialAccounts(),
                    ]).pSymmetric(h: context.percentWidth * 10, v: 32),
                    Expanded(
                      child: VxResponsive(
                        fallback: const Offstage(),
                        medium: IntroductionWidget()
                            .pOnly(left: 120)
                            .h(context.percentHeight * 60),
                        large: IntroductionWidget()
                            .pOnly(left: 120)
                            .h(context.percentHeight * 60),
                      ),
                    ),
                  ],
                ).w(context.screenWidth),
              ],
            ),
          ],
        ),
      )
          .size(
              context.screenWidth,
              context.isMobile
                  ? context.percentHeight * 60
                  : context.percentHeight * 70)
          .color(ThemeColors.secondaryColor)
          .make(),
    );
  }
}

class IntroductionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return VStack(
      [
        " - ABOUT ME".text.gray500.widest.sm.make(),
        if(context.isMobile)10.heightBox else 0.heightBox,
        "Developer for mobile & web, dart, flutter and firebase | "
                "UX/UI Designer | "
                "Masters Graduate - University of Adelaide | "
                "Mechatronics & "
                "Mechanical Engineer | Entrepreneur | Investor"
            .text
            .white
            .xl2
            .maxLines(10)
            .make()
            .w(context.isMobile
                ? context.screenWidth
                : context.percentWidth * 40),
        20.heightBox,
      ],
      alignment: MainAxisAlignment.spaceEvenly,
    );
  }
}

class ImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transform(
      alignment: Alignment.centerRight,
      child: Image.asset(
        "assets/pic.png",
        fit: BoxFit.cover,
        height: context.percentHeight * 20,
      ),
      transform: Matrix4.rotationY(pi),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Icon(
      AntDesign.codesquare,
      size: 50,
      color: ThemeColors.accentColor,
    );
  }
}

class SocialAccounts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return [
      Icon(AntDesign.twitter, color: Colors.white).mdClick(() {
        launch("https://twitter.com/AdityaNath_K");
      }).make(),
      20.widthBox,
      //Icon(AntDesign.instagram, color: Colors.white).mdClick(() {
      //  launch("https://instagram.com");
      //}).make(),
      //20.widthBox,
      Icon(AntDesign.github, color: Colors.white).mdClick(() {
        launch("https://github.com/kronosking007");
      }).make(),
      20.widthBox,
      Icon(AntDesign.linkedin_square, color: Colors.white).mdClick(() {
        launch("https://www.linkedin.com/in/aditya-nath-kalla-59068a114/");
      }).make(),
      20.widthBox,
    ].hStack();
  }
}
