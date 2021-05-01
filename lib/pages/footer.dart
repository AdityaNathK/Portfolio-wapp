import 'package:flutter/material.dart';
import 'package:portfolio_aditya/pages/header.dart';
import 'package:portfolio_aditya/utils/themedata.dart';
import 'package:velocity_x/velocity_x.dart';

class FooterSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return VStack(
      [
        VxDevice(
          mobile: VStack([
            "Wanna hire me for your next project?\nSend a mail to"
                .text
                .center.white
                .xl2
                .make(),
            10.heightBox,
            "aditya.k.nath@gmail.com"
                .richText
                .color(ThemeColors.accentColor)
                .semiBold
                .make()
                .box
                .border(color: ThemeColors.accentColor)
                .p16
                .rounded
                .make(),
          ],
            crossAlignment: CrossAxisAlignment.center,

          ),
          web: HStack(
            [
              "Wanna hire me for your next project?\nLets Talk"
                  .text
                  .white
                  .center
                  .xl2
                  .make(),
              10.heightBox,
              "aditya.k.nath@gmail.com"
                  .text
                  .color(ThemeColors.accentColor)
                  .semiBold
                  .make()
                  .box
                  .border(color: ThemeColors.accentColor)
                  .p16
                  .rounded
                  .make(),
            ],
            alignment: MainAxisAlignment.spaceAround,
          ).w(context.safePercentWidth *70).scale150().p16(),
        ),
        50.heightBox,
        CustomAppBar().shimmer(primaryColor: ThemeColors.accentColor),
        10.heightBox,
        "Thank You".text.center.white.semiBold.make(),
        20.heightBox,
        "MADE WITH FLUTTER @ 2021".text.center.white.make()

      ],
      crossAlignment: CrossAxisAlignment.center,
    ).wFull(context).p16();
  }
}
