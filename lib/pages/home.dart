import 'package:flutter/material.dart';
import 'package:portfolio_aditya/utils/themedata.dart';
import 'package:velocity_x/velocity_x.dart';

import 'body.dart';
import 'footer.dart';
import 'header.dart';
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: ThemeColors.mainColor,
      child: VStack([
        HeaderSection(),
        if (context.isMobile)IntroductionWidget().p16(),
        BodySection(),
        FooterSection()
      ]).scrollVertical(),
    );
  }
}
