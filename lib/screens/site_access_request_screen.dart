import 'package:eimsky_dns_app/configs/ThemeConstants.dart';
import 'package:eimsky_dns_app/configs/palette.dart';
import 'package:eimsky_dns_app/utils/page_routes.dart';
import 'package:eimsky_dns_app/widgets/header_bg_widget.dart';
import 'package:eimsky_dns_app/widgets/selected_team_card_item.dart';
import 'package:eimsky_dns_app/widgets/user_avatar_widget.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:slide_to_act/slide_to_act.dart';

class SiteAccessRequestScreen extends StatefulWidget {
  const SiteAccessRequestScreen({Key? key}) : super(key: key);

  @override
  _SiteAccessRequestScreenState createState() => _SiteAccessRequestScreenState();
}

class _SiteAccessRequestScreenState extends State<SiteAccessRequestScreen> {
  bool needSiteKey = false;
  bool needSiteAccess = false;
  bool allAccepted = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: (allAccepted) ? _dispatchBottomSheet() : _acceptBottomSheet(),
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
                                "Site Access",
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
                      SizedBox(
                        width: 30.0,
                      ),
                      SelectedTeamCardItem(
                        teamCode: "T - 01",
                        teamName: "Team One",
                      ),
                    ],
                  ),
                  SizedBox(height: 15.0),
                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      physics: BouncingScrollPhysics(),
                      child: Container(
                        height: 500,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: ThemeConstants.defaultBodyMargin),
                              decoration: BoxDecoration(
                                color: Palette.siteAccessCardBG,
                                border: Border.all(
                                  color: Palette.borderColor.withOpacity(0.5),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(ThemeConstants.borderRadius)),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 25.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Site Key",
                                          style: TextStyle(
                                            fontFamily: ThemeConstants.font,
                                            fontWeight: FontWeight.w600,
                                            color: Palette.darkBlueColor,
                                            fontSize: 17.0,
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            print("needSiteKey");
                                            setState(() {
                                              needSiteKey = !needSiteKey;
                                            });
                                          },
                                          child: Container(
                                            width: 50.0,
                                            alignment: (!needSiteKey) ? Alignment.centerLeft : Alignment.centerRight,
                                            padding: EdgeInsets.all(1.5),
                                            decoration: BoxDecoration(
                                              color: (!needSiteKey) ? Palette.primaryColor.withOpacity(0.02) : Palette.primaryColor,
                                              border: Border.all(
                                                color: (!needSiteKey) ? Palette.borderColor : Palette.primaryColor,
                                                width: 1.0,
                                              ),
                                              borderRadius: BorderRadius.all(Radius.circular(ThemeConstants.borderRadius / 1.5)),
                                            ),
                                            child: Container(
                                              width: 20.0,
                                              height: 20.0,
                                              alignment: Alignment.center,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.all(Radius.circular(ThemeConstants.borderRadius / 2.0)),
                                              ),
                                              child: Icon(
                                                (!needSiteKey) ? Icons.close : Icons.done,
                                                size: 17.0,
                                                color: (!needSiteKey) ? Palette.gray_5 : Palette.primaryColor,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 1.0,
                                    color: Palette.borderColor.withOpacity(0.5),
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
                                    child: Container(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "With supporting text below as a natural lead-in to additional content.",
                                        maxLines: 5,
                                        style: TextStyle(
                                          fontFamily: ThemeConstants.font,
                                          fontWeight: FontWeight.w600,
                                          color: Palette.unselectedItem,
                                          fontSize: 12.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 20.0),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: ThemeConstants.defaultBodyMargin),
                              decoration: BoxDecoration(
                                color: Palette.siteAccessCardBG,
                                border: Border.all(
                                  color: Palette.borderColor.withOpacity(0.5),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(ThemeConstants.borderRadius)),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 25.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Site Access",
                                          style: TextStyle(
                                            fontFamily: ThemeConstants.font,
                                            fontWeight: FontWeight.w600,
                                            color: Palette.darkBlueColor,
                                            fontSize: 17.0,
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            print("needSiteAccess");
                                            setState(() {
                                              needSiteAccess = !needSiteAccess;
                                            });
                                          },
                                          child: Container(
                                            width: 50.0,
                                            alignment: (!needSiteAccess) ? Alignment.centerLeft : Alignment.centerRight,
                                            padding: EdgeInsets.all(1.5),
                                            decoration: BoxDecoration(
                                              color: (!needSiteAccess) ? Palette.primaryColor.withOpacity(0.02) : Palette.primaryColor,
                                              border: Border.all(
                                                color: (!needSiteAccess) ? Palette.borderColor : Palette.primaryColor,
                                                width: 1.0,
                                              ),
                                              borderRadius: BorderRadius.all(Radius.circular(ThemeConstants.borderRadius / 1.5)),
                                            ),
                                            child: Container(
                                              width: 20.0,
                                              height: 20.0,
                                              alignment: Alignment.center,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.all(Radius.circular(ThemeConstants.borderRadius / 2.0)),
                                              ),
                                              child: Icon(
                                                (!needSiteAccess) ? Icons.close : Icons.done,
                                                size: 17.0,
                                                color: (!needSiteAccess) ? Palette.gray_5 : Palette.primaryColor,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 1.0,
                                    color: Palette.borderColor.withOpacity(0.5),
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
                                    child: Container(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "With supporting text below as a natural lead-in to additional content.",
                                        maxLines: 5,
                                        style: TextStyle(
                                          fontFamily: ThemeConstants.font,
                                          fontWeight: FontWeight.w600,
                                          color: Palette.unselectedItem,
                                          fontSize: 12.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _acceptBottomSheet() {
    return Container(
      height: 65.0,
      color: Palette.primaryColor.withOpacity(0.08),
      margin: EdgeInsets.only(bottom: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 150.0,
            height: 35.0,
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
          GestureDetector(
            onTap: () {
              setState(() {
                allAccepted = true;
              });
            },
            child: Container(
              width: 150.0,
              height: 35.0,
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
          ),
        ],
      ),
    );
  }

  Widget _dispatchBottomSheet() {
    return Container(
      height: 65.0,
      color: Palette.primaryColor.withOpacity(0.08),
      padding: EdgeInsets.symmetric(horizontal: 20),
      margin: EdgeInsets.only(bottom: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 150.0,
            height: 35.0,
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
          Expanded(
            child: SlideAction(
              elevation: 0,
              innerColor: Palette.primaryColor,
              outerColor: Palette.button_primary,
              sliderButtonIcon: Icon(Icons.chevron_right, color: Colors.white, size: 20.0),
              sliderButtonIconPadding: 3,
              borderRadius: ThemeConstants.borderRadius / 2,
              sliderRotate: false,
              sliderButtonIconSize: 20,
              height: 35.0,
              text: "Dispatch",
              textStyle: TextStyle(
                fontFamily: ThemeConstants.font,
                fontWeight: FontWeight.w600,
                color: Palette.primaryColor,
                fontSize: 11.0,
              ),
              animationDuration: Duration(microseconds: 30),
              sliderButtonYOffset: 5,
              onSubmit: () {
                print("dispatched");
                Navigator.pushNamed(context, PageRoutes.siteCheckListScreen);
              },
            ),
          ),
        ],
      ),
    );
  }
}
