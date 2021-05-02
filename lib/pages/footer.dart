import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:portfolio_aditya/utils/themedata.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';
const String adityaMail = "aditya.k.nath@gmail.com";
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
            GestureDetector(
              onTap: (){
                _launchEmail(adityaMail);
              },
              child: "aditya.k.nath@gmail.com"
                  .text
                  .color(ThemeColors.accentColor)
                  .semiBold
                  .make()
                  .box
                  .border(color: ThemeColors.accentColor)
                  .p16
                  .rounded
                  .make(),
            ),
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
              GestureDetector(
                onTap: (){
                  _launchEmail(adityaMail);
                },
                child: "aditya.k.nath@gmail.com"
                    .text
                    .color(ThemeColors.accentColor)
                    .semiBold
                    .make()
                    .box
                    .border(color: ThemeColors.accentColor)
                    .p16
                    .rounded
                    .make(),
              ),
            ],
            alignment: MainAxisAlignment.spaceAround,
          ).w(context.safePercentWidth *70).scale150().p16(),
        ),
        50.heightBox,
        CustomAppBarNew().shimmer(primaryColor: ThemeColors.accentColor),
        10.heightBox,
        "Thank You".text.center.white.semiBold.make(),
        20.heightBox,
        "MADE WITH FLUTTER ".text.center.white.semiBold.make(),
        10.heightBox,
        "ADITYA NATH @ 2021".text.center.white.make()


      ],
      crossAlignment: CrossAxisAlignment.center,
    ).wFull(context).p16();
  }
}

class CustomAppBarNew extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Icon(
      AntDesign.heart,
      size: 50,
      color: Colors.redAccent,
    );
  }
}

void _launchEmail(String emailId)async{
  var url = "mailto:$emailId?subject=Hi Aditya, lets discuss about a "
      "new project";
  if(await canLaunch(url)){
    await launch(url);
  }
  else{
    throw "Could not send email";
  }
}
