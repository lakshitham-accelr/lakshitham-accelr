import 'package:eimsky_dns_app/configs/ThemeConstants.dart';
import 'package:eimsky_dns_app/configs/palette.dart';
import 'package:eimsky_dns_app/widgets/expansion_tile_widget.dart';
import 'package:eimsky_dns_app/widgets/header_bg_widget.dart';
import 'package:eimsky_dns_app/widgets/question_widget.dart';
import 'package:eimsky_dns_app/widgets/response_type_widgets/barcode_input_widget.dart';
import 'package:eimsky_dns_app/widgets/response_type_widgets/location_widget.dart';
import 'package:eimsky_dns_app/widgets/selected_team_card_item.dart';
import 'package:eimsky_dns_app/widgets/user_avatar_widget.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:slide_to_act/slide_to_act.dart';

class SiteCheckListScreen extends StatefulWidget {
  const SiteCheckListScreen({Key? key}) : super(key: key);

  @override
  _SiteCheckListScreenState createState() => _SiteCheckListScreenState();
}

class _SiteCheckListScreenState extends State<SiteCheckListScreen> {
  bool isArrived = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: _bottomSheet(),
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
                          onTap: () {
                            FocusScope.of(context).unfocus();
                            Navigator.pop(context);
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
                                "Installation Process",
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
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                physics: (isArrived) ? BouncingScrollPhysics() : NeverScrollableScrollPhysics(),
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
                    Stack(
                      children: [
                        Opacity(
                          opacity: (isArrived) ? 1 : 0.5,
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              // This should be generated with the API response checklist
                              ExpansionTileWidget(title: "Pre - Inspection List"),
                              SizedBox(height: 3),
                              ExpansionTileWidget(title: "Post - Inspection List"),
                              SizedBox(height: 20),
                              QuestionWidget(title: "Barcode", responseTypeWidget: BarcodeInputWidget()),
                              QuestionWidget(title: "Barcode", responseTypeWidget: LocationWidget(hintText: "Add Your Location")),
                              SizedBox(height: 120),
                            ],
                          ),
                        ),
                        (isArrived)
                            ? SizedBox.shrink()
                            : Container(
                                height: 1000.0,
                                foregroundDecoration: BoxDecoration(
                                  color: Palette.gray_1,
                                  backgroundBlendMode: BlendMode.saturation,
                                ),
                              ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _bottomSheet() {
    return Container(
      height: 65.0,
      color: Palette.primaryColor.withOpacity(0.08),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          (!isArrived)
              ? Expanded(
                  child: Transform.scale(
                    scale: 0.6,
                    child: SlideAction(
                      elevation: 0,
                      innerColor: Palette.primaryColor,
                      outerColor: Palette.button_primary,
                      sliderButtonIcon: Icon(Icons.chevron_right, color: Colors.white, size: 45.0),
                      sliderButtonIconPadding: 0,
                      borderRadius: ThemeConstants.borderRadius / 1.0,
                      sliderRotate: false,
                      height: 65.0,
                      text: "Arrived",
                      textStyle: TextStyle(
                        fontFamily: ThemeConstants.font,
                        fontWeight: FontWeight.w600,
                        color: Palette.primaryColor,
                        fontSize: 22.0,
                      ),
                      sliderButtonYOffset: 7,
                      alignment: Alignment.center,
                      submittedIcon: Icon(Icons.done, color: Palette.primaryColor, size: 40.0),
                      onSubmit: () {
                        print("Arrived");

                        Future.delayed(Duration(seconds: 1), () {
                          setState(() {
                            isArrived = true;
                          });
                        });
                      },
                    ),
                  ),
                )
              : SizedBox.shrink(),
          (isArrived)
              ? Expanded(
                  child: Transform.scale(
                    scale: 0.6,
                    child: SlideAction(
                      elevation: 0,
                      innerColor: Palette.primaryColor,
                      outerColor: Palette.button_primary,
                      sliderButtonIcon: Icon(Icons.chevron_right, color: Colors.white, size: 45.0),
                      sliderButtonIconPadding: 0,
                      borderRadius: ThemeConstants.borderRadius / 1.0,
                      sliderRotate: false,
                      height: 65.0,
                      text: "Installed",
                      textStyle: TextStyle(
                        fontFamily: ThemeConstants.font,
                        fontWeight: FontWeight.w600,
                        color: Palette.primaryColor,
                        fontSize: 22.0,
                      ),
                      sliderButtonYOffset: 7,
                      alignment: Alignment.center,
                      submittedIcon: Icon(Icons.done, color: Palette.primaryColor, size: 40.0),
                      onSubmit: () {
                        print("Installed");
                      },
                    ),
                  ),
                )
              : SizedBox.shrink(),
        ],
      ),
    );
  }
}
