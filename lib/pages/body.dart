import 'package:flutter/material.dart';
import 'package:portfolio_aditya/utils/themedata.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';

const String bmi = "https://github.com/kronosking007/calc_bmi_ui";
const String ourwall = "https://github.com/kronosking007/OurWall-Academic-Project";
const String portfolio = "https://github.com/kronosking007/Portfolio-wapp";
const String googleSheets = "https://github.com/kronosking007/Flutter-GoolgeSheetsAPI";
const String mooneye = "https://github.com/kronosking007/project-mooneye";
const String svago = "https://github.com/kronosking007/svago-template";
const String covid = "https://github"
    ".com/kronosking007/Covid-19-Tracker-World-Data-";


class BodySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: ThemeColors.secondaryColor,
      child: Flex(
        direction: context.isMobile ? Axis.vertical : Axis.horizontal,
        children: [
          "My Projects\n".richText.xl4.white.make(),
          20.widthBox,
          Expanded(
            child: VxSwiper(
              items: [
                GestureDetector(
                  onTap: () {
                    _launchUrl(bmi);
                  },
                  child: ProjectWidget(title: "BMI Calculator"),
                ),
                GestureDetector(
                  onTap: () {
                    _launchUrl(svago);
                  },
                  child: ProjectWidget(title: "Svago-Whatsapp Stickers"),
                ),
                GestureDetector(
                  onTap: () {
                    _launchUrl(covid);
                  },
                  child: ProjectWidget(title: "World CoVid Cases Tracker"),
                ),
                GestureDetector(
                  onTap: () {
                    _launchUrl(mooneye);
                  },
                  child: ProjectWidget(title: "MoonEye Website"),
                ),
                GestureDetector(
                  onTap: () {
                    _launchUrl(ourwall);
                  },
                  child: ProjectWidget(title: "Family Connectivity App"),
                ),
                GestureDetector(
                  onTap: () {
                    _launchUrl(googleSheets);
                  },
                  child: ProjectWidget(title: "Flutter-GoogleSheetsAPI"),
                ),
                GestureDetector(
                  onTap: () {
                    _launchUrl(portfolio);
                  },
                  child: ProjectWidget(title: "Portfolio App"),
                )

              ],
              height: 170,
              enlargeCenterPage: true,
              viewportFraction: context.isMobile ? 0.75 : 0.4,
              autoPlay: true,
              autoPlayAnimationDuration: 1.seconds,
            ),
          ),
        ],
      ).p64().h(context.isMobile ? 400 : 300).w(context.screenWidth),
    );
  }

  void _launchUrl(String _url) async {
    await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';
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
        .square(200)
        .color(ThemeColors.mainColor)
        .make()
        .p16();
  }
}
