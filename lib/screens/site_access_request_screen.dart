import 'package:eimsky_dns_app/configs/ThemeConstants.dart';
import 'package:eimsky_dns_app/configs/palette.dart';
import 'package:eimsky_dns_app/widgets/header_bg_widget.dart';
import 'package:eimsky_dns_app/widgets/selected_team_card_item.dart';
import 'package:eimsky_dns_app/widgets/user_avatar_widget.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class SiteAccessRequestScreen extends StatefulWidget {
  const SiteAccessRequestScreen({Key? key}) : super(key: key);

  @override
  _SiteAccessRequestScreenState createState() => _SiteAccessRequestScreenState();
}

class _SiteAccessRequestScreenState extends State<SiteAccessRequestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Container(
        height: 55.0,
        color: Palette.primaryColor.withOpacity(0.08),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 150.0,
              height: 30.0,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Palette.primaryColor,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.all(Radius.circular(ThemeConstants.borderRadius / 1.5)),
              ),
              child: Text(
                "Cancel",
                style: TextStyle(
                  fontFamily: ThemeConstants.font,
                  fontWeight: FontWeight.w600,
                  color: Palette.primaryColor,
                  fontSize: 11.0,
                ),
              ),
            ),
            SizedBox(width: 10),
            Container(
              width: 150.0,
              height: 30.0,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Palette.primaryColor,
                border: Border.all(
                  color: Palette.primaryColor,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.all(Radius.circular(ThemeConstants.borderRadius / 1.5)),
              ),
              child: Text(
                "Accept",
                style: TextStyle(
                  fontFamily: ThemeConstants.font,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                  fontSize: 11.0,
                ),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                HeaderBGWidget(bannerHeight: 110.0),
                Positioned(
                  top: 30.0,
                  left: 0.0,
                  right: 0.0,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: ThemeConstants.defaultBodyMargin / 2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: Container(
                            width: 35.0,
                            height: 35.0,
                            alignment: Alignment.center,
                            margin: EdgeInsets.all(15.0),
                            decoration: BoxDecoration(
                              color: Palette.primaryColor.withOpacity(0.05),
                              borderRadius: BorderRadius.all(Radius.circular(ThemeConstants.borderRadius)),
                            ),
                            child: Icon(
                              Icons.arrow_back_ios_sharp,
                              size: 15.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 160.0,
                              child: Text(
                                "Allocate Team",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: ThemeConstants.font,
                                  fontWeight: FontWeight.w700,
                                  color: Palette.darkBlueColor,
                                  fontSize: 17.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Transform.scale(
                          scale: 0.7,
                          child: UserAvatarWidget(),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 25.0),
                        child: CircularPercentIndicator(
                          radius: 125.0,
                          animation: true,
                          animationDuration: 1200,
                          reverse: true,
                          lineWidth: 10.0,
                          percent: 0.7,
                          center: Center(
                            child: Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Remaining",
                                    style: TextStyle(
                                      fontFamily: ThemeConstants.font,
                                      fontWeight: FontWeight.w600,
                                      color: Palette.darkBlueColor.withOpacity(0.4),
                                      fontSize: 10.0,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    "1h 40m",
                                    style: TextStyle(
                                      fontFamily: ThemeConstants.font,
                                      fontWeight: FontWeight.w600,
                                      color: Palette.darkBlueColor.withOpacity(0.4),
                                      fontSize: 20.0,
                                    ),
                                  ),
                                  SizedBox(height: 15),
                                ],
                              ),
                            ),
                          ),
                          circularStrokeCap: CircularStrokeCap.round,
                          backgroundColor: Palette.teamCardBGColor,
                          progressColor: Palette.primaryColor.withOpacity(0.8),
                        ),
                      ),
                      SizedBox(width: 30.0,),
                      SelectedTeamCardItem(
                        teamCode: "T - 01",
                        teamName: "Team One",
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
