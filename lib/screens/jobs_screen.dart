import 'package:eimsky_dns_app/utils/date_utils.dart';
import 'package:eimsky_dns_app/utils/popup_box.dart';
import 'package:eimsky_dns_app/widgets/color_dot_widget.dart';
import 'package:eimsky_dns_app/widgets/date_filter_popup.dart';
import 'package:eimsky_dns_app/widgets/job_card_item.dart';
import 'package:eimsky_dns_app/widgets/job_request_popup.dart';
import 'package:eimsky_dns_app/widgets/job_screen_tab.dart';
import 'package:eimsky_dns_app/widgets/simple_page_section_widget.dart';
import 'package:eimsky_dns_app/widgets/header_bg_widget.dart';
import 'package:eimsky_dns_app/widgets/status_filter_popup.dart';
import 'package:eimsky_dns_app/widgets/type_filter_popup.dart';
import 'package:eimsky_dns_app/widgets/user_avatar_widget.dart';
import 'package:flutter/material.dart';
import 'package:eimsky_dns_app/configs/ThemeConstants.dart';
import 'package:eimsky_dns_app/configs/palette.dart';

class JobsScreen extends StatefulWidget {
  const JobsScreen({Key? key, required this.focusPageFunction}) : super(key: key);

  final Function focusPageFunction;

  @override
  _JobsScreenState createState() => _JobsScreenState();
}

class _JobsScreenState extends State<JobsScreen> {
  int selectedTab = 0;

  // Filters
  int selectedOptionOfDateFilter = 0;
  late List<String> selectedOptionOfDateFilterOptions;

  int selectedOptionOfTypeFilter = 0;
  late List<String> selectedOptionOfTypeFilterOptions;

  List<int> selectedOptionOfStatusFilter = [];

  @override
  void initState() {
    super.initState();

    selectedOptionOfDateFilterOptions = ["All", "Today :  ${getMonthAndDate()}", "Yesterday", "Last 7 Days", "Last 30 Days", "This Month", "Last Month", "Others"];
    selectedOptionOfTypeFilterOptions = ["All", "Portable Generator", "PIS", "Refuel"];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 185,
          child: Stack(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  HeaderBGWidget(),
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
                            onTap: () {
                              widget.focusPageFunction(0);
                            },
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
              Positioned(
                bottom: 0.0,
                child: Container(
                  height: 105.0,
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.center,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 22.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedTab = 0;
                            });
                          },
                          child: JobScreenTab(tabName: "Ad Hoc", isSelectedTab: (selectedTab == 0)),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedTab = 1;
                            });
                          },
                          child: JobScreenTab(tabName: "Scheduled", isSelectedTab: (selectedTab == 1)),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        (selectedTab == 0)
            ? Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: ThemeConstants.defaultBodyMargin),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: () => popUpBox(
                                      context,
                                      DateFilterPopUp(
                                        selectDateFilterOptionList: selectedOptionOfDateFilterOptions,
                                        selectDateFilterOption: selectedOptionOfDateFilter,
                                        selectDateFilterOptionFunction: selectDateFilterOption,
                                      )),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Palette.primaryColor.withOpacity(0.02),
                                      border: Border.all(
                                        color: Palette.borderColor,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.all(Radius.circular(ThemeConstants.borderRadius / 1.5)),
                                    ),
                                    padding: EdgeInsets.symmetric(
                                      vertical: 5.0,
                                      horizontal: 15.0,
                                    ),
                                    child: Text(
                                      selectedOptionOfDateFilterOptions[selectedOptionOfDateFilter],
                                      style: TextStyle(
                                        fontFamily: ThemeConstants.font,
                                        fontWeight: FontWeight.w600,
                                        color: Palette.primaryColor,
                                        fontSize: 10.0,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 5.0,
                                ),
                                GestureDetector(
                                  onTap: () => popUpBox(
                                      context,
                                      TypeFilterPopUp(
                                        selectTypeFilterOptionList: selectedOptionOfTypeFilterOptions,
                                        selectTypeFilterOption: selectedOptionOfTypeFilter,
                                        selectTypeFilterOptionFunction: selectTypeFilterOption,
                                      )),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Palette.primaryColor.withOpacity(0.02),
                                      border: Border.all(
                                        color: Palette.borderColor,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.all(Radius.circular(ThemeConstants.borderRadius / 1.5)),
                                    ),
                                    padding: EdgeInsets.symmetric(
                                      vertical: 5.0,
                                      horizontal: 15.0,
                                    ),
                                    child: Text(
                                      selectedOptionOfTypeFilterOptions[selectedOptionOfTypeFilter],
                                      style: TextStyle(
                                        fontFamily: ThemeConstants.font,
                                        fontWeight: FontWeight.w600,
                                        color: Palette.primaryColor,
                                        fontSize: 10.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            GestureDetector(
                              onTap: () => popUpBox(context, StatusFilterPopUp()),
                              child: Container(
                                width: 25.0,
                                height: 25.0,
                                color: Colors.transparent,
                                padding: EdgeInsets.all(5),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      right: 0.0,
                                      top: 0.0,
                                      child: ColorDotWidget(
                                        dotSize: 6.0,
                                        dotColor: Palette.dotColor_yellow,
                                      ),
                                    ),
                                    Positioned(
                                      left: 0.0,
                                      top: 0.0,
                                      child: ColorDotWidget(
                                        dotSize: 6.0,
                                        dotColor: Palette.dotColor_red,
                                      ),
                                    ),
                                    Positioned(
                                      right: 0.0,
                                      bottom: 0.0,
                                      child: ColorDotWidget(
                                        dotSize: 6.0,
                                        dotColor: Palette.dotColor_blue,
                                      ),
                                    ),
                                    Positioned(
                                      left: 0.0,
                                      bottom: 0.0,
                                      child: ColorDotWidget(
                                        dotSize: 6.0,
                                        dotColor: Palette.dotColor_green,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      Expanded(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          physics: BouncingScrollPhysics(),
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: ThemeConstants.defaultBodyMargin),
                                child: SimplePageSectionWidget(sectionName: "Today"),
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
                                            JobCardItem(
                                              code: "PG",
                                              count: 23,
                                              status: "Installed",
                                              statusTextColor: Palette.installedText_green,
                                              statusBoxColor: Palette.installed_green,
                                              date: "24 / 06 / 2021",
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: ThemeConstants.defaultBodyMargin),
                                child: SimplePageSectionWidget(sectionName: "Today"),
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
                                            JobCardItem(
                                              code: "PG",
                                              count: 23,
                                              status: "Approval Pending",
                                              statusTextColor: Palette.approvalPendingText_red,
                                              statusBoxColor: Palette.approvalPending_red,
                                              date: "24 / 06 / 2021",
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
                                            JobCardItem(
                                              code: "PG",
                                              count: 23,
                                              status: "Approval Pending",
                                              statusTextColor: Palette.approvalPendingText_red,
                                              statusBoxColor: Palette.approvalPending_red,
                                              date: "24 / 06 / 2021",
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: ThemeConstants.defaultBodyMargin),
                                child: SimplePageSectionWidget(sectionName: "Today"),
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
                                            JobCardItem(
                                              code: "PG",
                                              count: 23,
                                              status: "Approval Pending",
                                              statusTextColor: Palette.approvalPendingText_red,
                                              statusBoxColor: Palette.approvalPending_red,
                                              date: "24 / 06 / 2021",
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
                                            JobCardItem(
                                              code: "PG",
                                              count: 23,
                                              status: "Approval Pending",
                                              statusTextColor: Palette.approvalPendingText_red,
                                              statusBoxColor: Palette.approvalPending_red,
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
                    ],
                  ),
                ),
              )
            : SizedBox.shrink(),
        (selectedTab == 1)
            ? Expanded(
                child: Center(
                  child: Text(
                    "No Scheduled Items",
                    maxLines: 3,
                    style: TextStyle(
                      fontFamily: ThemeConstants.font,
                      fontWeight: FontWeight.w600,
                      color: Palette.gray_4,
                      fontSize: 10.0,
                    ),
                  ),
                ),
              )
            : SizedBox.shrink(),
      ],
    );
  }

  void selectDateFilterOption(int optionIndex) {
    setState(() {
      selectedOptionOfDateFilter = optionIndex;
    });
  }

  void selectTypeFilterOption(int optionIndex) {
    setState(() {
      selectedOptionOfTypeFilter = optionIndex;
    });
  }
}
