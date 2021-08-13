import 'package:eimsky_dns_app/configs/ThemeConstants.dart';
import 'package:eimsky_dns_app/configs/palette.dart';
import 'package:eimsky_dns_app/utils/page_routes.dart';
import 'package:eimsky_dns_app/widgets/header_bg_widget.dart';
import 'package:eimsky_dns_app/widgets/simple_page_section_widget.dart';
import 'package:eimsky_dns_app/widgets/team_card_item.dart';
import 'package:eimsky_dns_app/widgets/team_member_card.dart';
import 'package:eimsky_dns_app/widgets/user_avatar_widget.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class TeamAllocateScreen extends StatefulWidget {
  const TeamAllocateScreen({Key? key}) : super(key: key);

  @override
  _TeamAllocateScreenState createState() => _TeamAllocateScreenState();
}

class _TeamAllocateScreenState extends State<TeamAllocateScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Container(
        height: 55.0,
        color: Palette.primaryColor.withOpacity(0.08),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                print("Edit Team");
              },
              child: Container(
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
                  "Edit Team",
                  style: TextStyle(
                    fontFamily: ThemeConstants.font,
                    fontWeight: FontWeight.w600,
                    color: Palette.primaryColor,
                    fontSize: 11.0,
                  ),
                ),
              ),
            ),
            SizedBox(width: 10),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, PageRoutes.siteAccessRequestScreen);
              },
              child: Container(
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
                  "Allocate Team",
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
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: ThemeConstants.defaultBodyMargin),
                    child: SimplePageSectionWidget(sectionName: "Allocate Team"),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    child: Container(
                      padding: EdgeInsets.only(
                        left: ThemeConstants.defaultBodyMargin - 6,
                        right: ThemeConstants.defaultBodyMargin - 6,
                        bottom: 30.0,
                        top: 20.0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              GestureDetector(
                                child: TeamCardItem(
                                  teamCode: "T - 01",
                                  teamName: "Team One",
                                  isSelected: true,
                                ),
                              ),
                              GestureDetector(
                                child: TeamCardItem(
                                  teamCode: "T - 01",
                                  teamName: "Team One",
                                ),
                              ),
                              GestureDetector(
                                child: TeamCardItem(
                                  teamCode: "T - 01",
                                  teamName: "Team One",
                                ),
                              ),
                              GestureDetector(
                                child: TeamCardItem(
                                  teamCode: "T - 01",
                                  teamName: "Team One",
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      physics: BouncingScrollPhysics(),
                      child: Container(
                          color: Colors.white,
                          padding: EdgeInsets.only(
                            left: ThemeConstants.defaultBodyMargin,
                            right: ThemeConstants.defaultBodyMargin,
                            bottom: 35.0,
                            top: 10.0,
                          ),
                          child: Wrap(
                            runSpacing: 10.0,
                            spacing: 10.0,
                            alignment: WrapAlignment.spaceBetween,
                            children: [
                              TeamMemberCard(),
                              TeamMemberCard(),
                              TeamMemberCard(),
                              TeamMemberCard(),
                              TeamMemberCard(),
                              TeamMemberCard(),
                              TeamMemberCard(),
                            ],
                          )),
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
}
