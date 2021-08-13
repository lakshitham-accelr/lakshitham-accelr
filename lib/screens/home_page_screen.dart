import 'package:eimsky_dns_app/widgets/entry_page_header_bg_widget.dart';
import 'package:eimsky_dns_app/widgets/main_menu_card_item.dart';
import 'package:eimsky_dns_app/widgets/simple_page_section_widget.dart';
import 'package:eimsky_dns_app/widgets/user_avatar_widget.dart';
import 'package:flutter/material.dart';
import 'package:eimsky_dns_app/configs/ThemeConstants.dart';
import 'package:eimsky_dns_app/configs/palette.dart';
import 'package:fl_chart/fl_chart.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key? key, required this.focusPageFunction}) : super(key: key);

  final Function focusPageFunction;

  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 360,
          child: Stack(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  EntryPageHeaderBGWidget(),
                  Positioned(
                    top: 40.0,
                    left: 0.0,
                    right: 0.0,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: ThemeConstants.defaultBodyMargin),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Robert Pattinson",
                                style: TextStyle(
                                  fontFamily: ThemeConstants.font,
                                  fontWeight: FontWeight.w700,
                                  color: Palette.darkBlueColor,
                                  fontSize: 17.0,
                                ),
                              ),
                              Text(
                                "Colombo 4 - depot",
                                style: TextStyle(
                                  fontFamily: ThemeConstants.font,
                                  fontWeight: FontWeight.w600,
                                  color: Palette.darkBlueColor.withOpacity(0.4),
                                  fontSize: 12.0,
                                ),
                              ),
                            ],
                          ),
                          UserAvatarWidget(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Positioned(
                bottom: 0.0,
                child: Container(
                  height: 235.0,
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.center,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 22.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  widget.focusPageFunction(1);
                                },
                                child: MainMenuCardItem(count: 12, text: "Portable Generator"),
                              ),
                              MainMenuCardItem(count: 08, text: "PIS"),
                              MainMenuCardItem(count: 09, text: "Refuel"),
                              MainMenuCardItem(count: 17, text: "Portable Generator"),
                              MainMenuCardItem(count: 08, text: "PIS"),
                            ],
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              MainMenuCardItem(text: "Site Access Permission Management"),
                              MainMenuCardItem(count: 12, text: "Vehicle Management"),
                              MainMenuCardItem(count: 12, text: "Site Routine Management"),
                              MainMenuCardItem(text: "Portable Generator"),
                              MainMenuCardItem(count: 12, text: "Portable Generator"),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            physics: BouncingScrollPhysics(),
            child: Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              margin: EdgeInsets.symmetric(horizontal: ThemeConstants.defaultBodyMargin),
              child: Column(
                children: [
                  SimplePageSectionWidget(sectionName: "Section One"),
                  SizedBox(
                    height: 25.0,
                  ),
                  Container(
                    height: 70.0,
                    decoration: BoxDecoration(
                      color: Palette.primaryColor.withOpacity(0.02),
                      border: Border.all(
                        color: Palette.borderColor.withOpacity(0.5),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(ThemeConstants.borderRadius)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.symmetric(horizontal: 15.0),
                          child: Row(
                            children: [
                              Container(
                                width: 40.0,
                                height: 40.0,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: Palette.primaryColor.withOpacity(0.1),
                                  borderRadius: BorderRadius.all(Radius.circular(ThemeConstants.borderRadius)),
                                ),
                                child: Text(
                                  "12",
                                  style: TextStyle(
                                    fontFamily: ThemeConstants.font,
                                    fontWeight: FontWeight.w600,
                                    color: Palette.primaryColor,
                                    fontSize: 17.0,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Container(
                                width: 60.0,
                                child: Text(
                                  "SLA Time Breaches",
                                  maxLines: 3,
                                  style: TextStyle(
                                    fontFamily: ThemeConstants.font,
                                    fontWeight: FontWeight.w600,
                                    color: Palette.darkBlueColor,
                                    fontSize: 9.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 1.0,
                          color: Palette.borderColor.withOpacity(0.5),
                        ),
                        Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.symmetric(horizontal: 15.0),
                          child: Row(
                            children: [
                              Container(
                                width: 40.0,
                                height: 40.0,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: Palette.primaryColor.withOpacity(0.1),
                                  borderRadius: BorderRadius.all(Radius.circular(ThemeConstants.borderRadius)),
                                ),
                                child: Text(
                                  "12",
                                  style: TextStyle(
                                    fontFamily: ThemeConstants.font,
                                    fontWeight: FontWeight.w600,
                                    color: Palette.primaryColor,
                                    fontSize: 17.0,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Container(
                                width: 60.0,
                                child: Text(
                                  "Outage Count",
                                  maxLines: 3,
                                  style: TextStyle(
                                    fontFamily: ThemeConstants.font,
                                    fontWeight: FontWeight.w600,
                                    color: Palette.darkBlueColor,
                                    fontSize: 9.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 45.0,
                  ),
                  SimplePageSectionWidget(sectionName: "Two One"),
                  SizedBox(
                    height: 25.0,
                  ),
                  Container(
                    height: 150.0,
                    alignment: Alignment.center,
                    child: LineChart(
                      LineChartData(
                        minX: 0,
                        maxX: 11,
                        minY: 0,
                        maxY: 7,
                        lineTouchData: LineTouchData(
                            enabled: true,
                            getTouchedSpotIndicator: (barData, indexes) => List<TouchedSpotIndicatorData>.generate(
                                indexes.length,
                                (_) => TouchedSpotIndicatorData(
                                      FlLine(
                                        color: Palette.userOffline,
                                        strokeWidth: .75,
                                      ),
                                      FlDotData(
                                        show: true,
                                      ),
                                    ))),
                        titlesData: FlTitlesData(
                          show: true,
                          bottomTitles: SideTitles(
                            showTitles: true,
                            getTextStyles: (value) {
                              return TextStyle(
                                fontFamily: ThemeConstants.font,
                                fontWeight: FontWeight.w600,
                                color: Palette.darkBlueColor.withOpacity(0.4),
                                fontSize: 7.0,
                              );
                            },
                            getTitles: (value) {
                              switch (value.toInt()) {
                                case 2:
                                  return "Feb";
                                case 4:
                                  return "Mar";
                                case 6:
                                  return "Apr";
                                case 8:
                                  return "May";
                                case 10:
                                  return "Jun";
                              }
                              return "";
                            },
                          ),
                          leftTitles: SideTitles(
                            showTitles: true,
                            reservedSize: 10,
                            getTextStyles: (value) {
                              return TextStyle(
                                fontFamily: ThemeConstants.font,
                                fontWeight: FontWeight.w600,
                                color: Palette.darkBlueColor.withOpacity(0.4),
                                fontSize: 7.0,
                              );
                            },
                            getTitles: (value) {
                              switch (value.toInt()) {
                                case 2:
                                  return "100";
                                case 4:
                                  return "200";
                                case 6:
                                  return "300";
                                case 8:
                                  return "400";
                                case 10:
                                  return "500";
                              }
                              return "";
                            },
                          ),
                        ),
                        gridData: FlGridData(
                          show: false,
                        ),
                        borderData: FlBorderData(
                          show: true,
                          border: Border(
                            left: BorderSide(width: 1, color: Palette.darkBlueColor.withOpacity(0.1)),
                            bottom: BorderSide(width: 1, color: Palette.darkBlueColor.withOpacity(0.1)),
                          ),
                        ),
                        lineBarsData: [
                          LineChartBarData(
                              colors: [Palette.primaryColor.withOpacity(0.6)],
                              isCurved: true,
                              dotData: FlDotData(
                                show: false,
                              ),
                              belowBarData: BarAreaData(
                                show: true,
                                colors: [Palette.primaryColor.withOpacity(0.05)],
                              ),
                              spots: [
                                FlSpot(0, 3),
                                FlSpot(2.6, 2),
                                FlSpot(4.9, 6),
                                FlSpot(6.8, 2.5),
                                FlSpot(8, 4),
                                FlSpot(9.5, 3),
                                FlSpot(11, 5),
                              ]),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50.0,
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
