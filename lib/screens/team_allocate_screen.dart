import 'package:eimsky_dns_app/utils/popup_box.dart';
import 'package:eimsky_dns_app/widgets/color_dot_widget.dart';
import 'package:eimsky_dns_app/widgets/date_filter_popup.dart';
import 'package:eimsky_dns_app/widgets/header_bg_widget.dart';
import 'package:eimsky_dns_app/widgets/job_card_item.dart';
import 'package:eimsky_dns_app/widgets/job_request_popup.dart';
import 'package:eimsky_dns_app/widgets/simple_page_section_widget.dart';
import 'package:eimsky_dns_app/widgets/status_filter_popup.dart';
import 'package:eimsky_dns_app/widgets/type_filter_popup.dart';
import 'package:eimsky_dns_app/widgets/user_avatar_widget.dart';
import 'package:flutter/material.dart';
import 'package:eimsky_dns_app/configs/ThemeConstants.dart';
import 'package:eimsky_dns_app/configs/palette.dart';

class TeamAllocateScreen extends StatefulWidget {
  const TeamAllocateScreen({Key? key}) : super(key: key);

  @override
  _TeamAllocateScreenState createState() => _TeamAllocateScreenState();
}

class _TeamAllocateScreenState extends State<TeamAllocateScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 165,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                HeaderBGWidget(bannerHeight: 120.0),
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
                        Container(
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
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 160.0,
                              child: Text(
                                "Jobs",
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
              child: Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: ThemeConstants.defaultBodyMargin),
                        child: SimplePageSectionWidget(sectionName: "Allocate Team"),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        child: Container(
                          child: Container(
                            padding: EdgeInsets.only(
                              left: ThemeConstants.defaultBodyMargin - 6,
                              right: ThemeConstants.defaultBodyMargin - 6,
                              bottom: 35.0,
                              top: 20.0,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    GestureDetector(
                                      onTap: () => popUpBox(context, JobRequestPopUp()),
                                      child: JobCardItem(
                                        code: "PG",
                                        count: 23,
                                        status: "Approval Pending",
                                        statusTextColor: Palette.approvalPendingText_red,
                                        statusBoxColor: Palette.approvalPending_red,
                                        date: "24 / 06 / 2021",
                                      ),
                                    ),
                                    JobCardItem(
                                      code: "PG",
                                      count: 23,
                                      status: "Installed",
                                      statusTextColor: Palette.installedText_green,
                                      statusBoxColor: Palette.installed_green,
                                      date: "24 / 06 / 2021",
                                    ),
                                    JobCardItem(
                                      code: "PG",
                                      count: 23,
                                      status: "Dispatched",
                                      statusTextColor: Palette.dispatchedText_yellow,
                                      statusBoxColor: Palette.dispatched_yellow,
                                      date: "24 / 06 / 2021",
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
