import 'package:eimsky_dns_app/configs/ThemeConstants.dart';
import 'package:eimsky_dns_app/configs/palette.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class EntryScreen extends StatefulWidget {
  const EntryScreen({Key? key}) : super(key: key);

  @override
  _EntryScreenState createState() => _EntryScreenState();
}

class _EntryScreenState extends State<EntryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: 400,
            child: Stack(
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      height: 210.0,
                      decoration: BoxDecoration(
                          color: Palette.headerBGColor,
                          image: DecorationImage(
                            image: AssetImage("assets/images/BG_DNS.png"),
                            fit: BoxFit.cover,
                            colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.4), BlendMode.dstATop),
                            alignment: Alignment.topCenter,
                          )),
                    ),
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
                            Stack(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(2.5),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Palette.primaryColor.withOpacity(0.2),
                                      width: 2.0,
                                    ),
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                  ),
                                  child: CircleAvatar(
                                    radius: 30,
                                    foregroundColor: Palette.headerBGColor,
                                    backgroundImage: AssetImage("assets/mock/sample_prof_pic.jpeg"),
                                  ),
                                ),
                                Positioned(
                                  right: 5.0,
                                  top: 10.0,
                                  child: Container(
                                    height: 10,
                                    width: 10,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Palette.userOffline,
                                    ),
                                  ),
                                )
                              ],
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
                    height: 260.0,
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
                                Container(
                                  width: 100.0,
                                  height: 100.0,
                                  margin: EdgeInsets.symmetric(horizontal: 8.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      color: Palette.borderColor.withOpacity(0.5),
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.all(Radius.circular(ThemeConstants.borderRadius)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Palette.darkBlueColor.withOpacity(0.1),
                                        spreadRadius: 0,
                                        blurRadius: 30,
                                        offset: Offset(0, 15), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        top: 10.0,
                                        right: 10.0,
                                        child: Container(
                                          width: 35.0,
                                          height: 35.0,
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
                                      ),
                                      Positioned(
                                        bottom: 10.0,
                                        left: 10.0,
                                        child: Container(
                                          width: 80.0,
                                          child: Text(
                                            "Portable Generator",
                                            maxLines: 3,
                                            style: TextStyle(
                                              fontFamily: ThemeConstants.font,
                                              fontWeight: FontWeight.w600,
                                              color: Palette.primaryColor,
                                              fontSize: 10.0,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        bottom: 0.0,
                                        left: 0.0,
                                        right: 0.0,
                                        child: Container(
                                          width: 80.0,
                                          height: 3.0,
                                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                                          decoration: BoxDecoration(
                                            color: Palette.primaryColor,
                                            borderRadius: BorderRadius.all(Radius.circular(ThemeConstants.borderRadius)),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 100.0,
                                  height: 100.0,
                                  margin: EdgeInsets.symmetric(horizontal: 8.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      color: Palette.borderColor.withOpacity(0.5),
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.all(Radius.circular(ThemeConstants.borderRadius)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Palette.darkBlueColor.withOpacity(0.1),
                                        spreadRadius: 0,
                                        blurRadius: 30,
                                        offset: Offset(0, 15), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        top: 10.0,
                                        right: 10.0,
                                        child: Container(
                                          width: 35.0,
                                          height: 35.0,
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
                                      ),
                                      Positioned(
                                        bottom: 10.0,
                                        left: 10.0,
                                        child: Container(
                                          width: 80.0,
                                          child: Text(
                                            "Portable Generator",
                                            maxLines: 3,
                                            style: TextStyle(
                                              fontFamily: ThemeConstants.font,
                                              fontWeight: FontWeight.w600,
                                              color: Palette.darkBlueColor,
                                              fontSize: 10.0,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 100.0,
                                  height: 100.0,
                                  margin: EdgeInsets.symmetric(horizontal: 8.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      color: Palette.borderColor.withOpacity(0.5),
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.all(Radius.circular(ThemeConstants.borderRadius)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Palette.darkBlueColor.withOpacity(0.1),
                                        spreadRadius: 0,
                                        blurRadius: 30,
                                        offset: Offset(0, 15), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        top: 10.0,
                                        right: 10.0,
                                        child: Container(
                                          width: 35.0,
                                          height: 35.0,
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
                                      ),
                                      Positioned(
                                        bottom: 10.0,
                                        left: 10.0,
                                        child: Container(
                                          width: 80.0,
                                          child: Text(
                                            "Portable Generator",
                                            maxLines: 3,
                                            style: TextStyle(
                                              fontFamily: ThemeConstants.font,
                                              fontWeight: FontWeight.w600,
                                              color: Palette.darkBlueColor,
                                              fontSize: 10.0,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 100.0,
                                  height: 100.0,
                                  margin: EdgeInsets.symmetric(horizontal: 8.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      color: Palette.borderColor.withOpacity(0.5),
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.all(Radius.circular(ThemeConstants.borderRadius)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Palette.darkBlueColor.withOpacity(0.1),
                                        spreadRadius: 0,
                                        blurRadius: 30,
                                        offset: Offset(0, 15), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        top: 10.0,
                                        right: 10.0,
                                        child: Container(
                                          width: 35.0,
                                          height: 35.0,
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
                                      ),
                                      Positioned(
                                        bottom: 10.0,
                                        left: 10.0,
                                        child: Container(
                                          width: 80.0,
                                          child: Text(
                                            "Portable Generator",
                                            maxLines: 3,
                                            style: TextStyle(
                                              fontFamily: ThemeConstants.font,
                                              fontWeight: FontWeight.w600,
                                              color: Palette.darkBlueColor,
                                              fontSize: 10.0,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 100.0,
                                  height: 100.0,
                                  margin: EdgeInsets.symmetric(horizontal: 8.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      color: Palette.borderColor.withOpacity(0.5),
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.all(Radius.circular(ThemeConstants.borderRadius)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Palette.darkBlueColor.withOpacity(0.1),
                                        spreadRadius: 0,
                                        blurRadius: 30,
                                        offset: Offset(0, 15), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        top: 10.0,
                                        right: 10.0,
                                        child: Container(
                                          width: 35.0,
                                          height: 35.0,
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
                                      ),
                                      Positioned(
                                        bottom: 10.0,
                                        left: 10.0,
                                        child: Container(
                                          width: 80.0,
                                          child: Text(
                                            "Portable Generator",
                                            maxLines: 3,
                                            style: TextStyle(
                                              fontFamily: ThemeConstants.font,
                                              fontWeight: FontWeight.w600,
                                              color: Palette.darkBlueColor,
                                              fontSize: 10.0,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 100.0,
                                  height: 100.0,
                                  margin: EdgeInsets.symmetric(horizontal: 8.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      color: Palette.borderColor.withOpacity(0.5),
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.all(Radius.circular(ThemeConstants.borderRadius)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Palette.darkBlueColor.withOpacity(0.1),
                                        spreadRadius: 0,
                                        blurRadius: 30,
                                        offset: Offset(0, 15), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        top: 10.0,
                                        right: 10.0,
                                        child: Container(
                                          width: 35.0,
                                          height: 35.0,
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
                                      ),
                                      Positioned(
                                        bottom: 10.0,
                                        left: 10.0,
                                        child: Container(
                                          width: 80.0,
                                          child: Text(
                                            "Portable Generator",
                                            maxLines: 3,
                                            style: TextStyle(
                                              fontFamily: ThemeConstants.font,
                                              fontWeight: FontWeight.w600,
                                              color: Palette.darkBlueColor,
                                              fontSize: 10.0,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 16.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: 100.0,
                                  height: 100.0,
                                  margin: EdgeInsets.symmetric(horizontal: 8.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      color: Palette.borderColor.withOpacity(0.5),
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.all(Radius.circular(ThemeConstants.borderRadius)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Palette.darkBlueColor.withOpacity(0.1),
                                        spreadRadius: 0,
                                        blurRadius: 30,
                                        offset: Offset(0, 15), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        top: 10.0,
                                        right: 10.0,
                                        child: Container(
                                          width: 35.0,
                                          height: 35.0,
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
                                      ),
                                      Positioned(
                                        bottom: 10.0,
                                        left: 10.0,
                                        child: Container(
                                          width: 80.0,
                                          child: Text(
                                            "Portable Generator",
                                            maxLines: 3,
                                            style: TextStyle(
                                              fontFamily: ThemeConstants.font,
                                              fontWeight: FontWeight.w600,
                                              color: Palette.darkBlueColor,
                                              fontSize: 10.0,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 100.0,
                                  height: 100.0,
                                  margin: EdgeInsets.symmetric(horizontal: 8.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      color: Palette.borderColor.withOpacity(0.5),
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.all(Radius.circular(ThemeConstants.borderRadius)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Palette.darkBlueColor.withOpacity(0.1),
                                        spreadRadius: 0,
                                        blurRadius: 30,
                                        offset: Offset(0, 15), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        top: 10.0,
                                        right: 10.0,
                                        child: Container(
                                          width: 35.0,
                                          height: 35.0,
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
                                      ),
                                      Positioned(
                                        bottom: 10.0,
                                        left: 10.0,
                                        child: Container(
                                          width: 80.0,
                                          child: Text(
                                            "Portable Generator",
                                            maxLines: 3,
                                            style: TextStyle(
                                              fontFamily: ThemeConstants.font,
                                              fontWeight: FontWeight.w600,
                                              color: Palette.darkBlueColor,
                                              fontSize: 10.0,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 100.0,
                                  height: 100.0,
                                  margin: EdgeInsets.symmetric(horizontal: 8.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      color: Palette.borderColor.withOpacity(0.5),
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.all(Radius.circular(ThemeConstants.borderRadius)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Palette.darkBlueColor.withOpacity(0.1),
                                        spreadRadius: 0,
                                        blurRadius: 30,
                                        offset: Offset(0, 15), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        top: 10.0,
                                        right: 10.0,
                                        child: Container(
                                          width: 35.0,
                                          height: 35.0,
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
                                      ),
                                      Positioned(
                                        bottom: 10.0,
                                        left: 10.0,
                                        child: Container(
                                          width: 80.0,
                                          child: Text(
                                            "Portable Generator",
                                            maxLines: 3,
                                            style: TextStyle(
                                              fontFamily: ThemeConstants.font,
                                              fontWeight: FontWeight.w600,
                                              color: Palette.darkBlueColor,
                                              fontSize: 10.0,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 100.0,
                                  height: 100.0,
                                  margin: EdgeInsets.symmetric(horizontal: 8.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      color: Palette.borderColor.withOpacity(0.5),
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.all(Radius.circular(ThemeConstants.borderRadius)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Palette.darkBlueColor.withOpacity(0.1),
                                        spreadRadius: 0,
                                        blurRadius: 30,
                                        offset: Offset(0, 15), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        top: 10.0,
                                        right: 10.0,
                                        child: Container(
                                          width: 35.0,
                                          height: 35.0,
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
                                      ),
                                      Positioned(
                                        bottom: 10.0,
                                        left: 10.0,
                                        child: Container(
                                          width: 80.0,
                                          child: Text(
                                            "Portable Generator",
                                            maxLines: 3,
                                            style: TextStyle(
                                              fontFamily: ThemeConstants.font,
                                              fontWeight: FontWeight.w600,
                                              color: Palette.darkBlueColor,
                                              fontSize: 10.0,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 100.0,
                                  height: 100.0,
                                  margin: EdgeInsets.symmetric(horizontal: 8.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      color: Palette.borderColor.withOpacity(0.5),
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.all(Radius.circular(ThemeConstants.borderRadius)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Palette.darkBlueColor.withOpacity(0.1),
                                        spreadRadius: 0,
                                        blurRadius: 30,
                                        offset: Offset(0, 15), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        top: 10.0,
                                        right: 10.0,
                                        child: Container(
                                          width: 35.0,
                                          height: 35.0,
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
                                      ),
                                      Positioned(
                                        bottom: 10.0,
                                        left: 10.0,
                                        child: Container(
                                          width: 80.0,
                                          child: Text(
                                            "Portable Generator",
                                            maxLines: 3,
                                            style: TextStyle(
                                              fontFamily: ThemeConstants.font,
                                              fontWeight: FontWeight.w600,
                                              color: Palette.darkBlueColor,
                                              fontSize: 10.0,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Section One",
                          style: TextStyle(
                            fontFamily: ThemeConstants.font,
                            fontWeight: FontWeight.w600,
                            color: Palette.darkBlueColor.withOpacity(0.4),
                            fontSize: 13.0,
                          ),
                        ),
                        Container(
                          height: 2.0,
                          width: MediaQuery.of(context).size.width * 0.55,
                          color: Palette.darkBlueColor.withOpacity(0.1),
                        ),
                      ],
                    ),
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Section Two",
                          style: TextStyle(
                            fontFamily: ThemeConstants.font,
                            fontWeight: FontWeight.w600,
                            color: Palette.darkBlueColor.withOpacity(0.4),
                            fontSize: 13.0,
                          ),
                        ),
                        Container(
                          height: 2.0,
                          width: MediaQuery.of(context).size.width * 0.55,
                          color: Palette.darkBlueColor.withOpacity(0.1),
                        ),
                      ],
                    ),
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
      ),
    );
  }
}
