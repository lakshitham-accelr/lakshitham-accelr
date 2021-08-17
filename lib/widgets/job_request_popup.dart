import 'package:eimsky_dns_app/utils/page_routes.dart';
import 'package:eimsky_dns_app/widgets/name_value_item.dart';
import 'package:flutter/material.dart';
import 'package:eimsky_dns_app/configs/palette.dart';
import 'package:eimsky_dns_app/configs/ThemeConstants.dart';

class JobRequestPopUp extends StatefulWidget {
  const JobRequestPopUp({Key? key}) : super(key: key);

  @override
  _JobRequestPopUpState createState() => _JobRequestPopUpState();
}

class _JobRequestPopUpState extends State<JobRequestPopUp> {
  final ScrollController siteAttributesListScrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400.0,
      child: Column(
        children: [
          Container(
            height: 55.0,
            padding: EdgeInsets.only(top: 10.0),
            decoration: BoxDecoration(
              color: Palette.teamCardBGColor.withOpacity(0.8),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(ThemeConstants.borderRadius / 1.5),
                topRight: Radius.circular(ThemeConstants.borderRadius / 1.5),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    "Approve request ?",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontFamily: ThemeConstants.font,
                      fontWeight: FontWeight.w700,
                      color: Palette.primaryColor,
                      fontSize: 15.0,
                    ),
                  ),
                ),
                SizedBox(width: 15.0),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    "PG - 23",
                    textAlign: TextAlign.start,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: TextStyle(
                      fontFamily: ThemeConstants.font,
                      fontWeight: FontWeight.w700,
                      color: Palette.darkBlueColor,
                      fontSize: 15.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15.0),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.symmetric(vertical: 10.0),
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
            child: Text(
              "Site Attributes",
              textAlign: TextAlign.start,
              style: TextStyle(
                fontFamily: ThemeConstants.font,
                fontWeight: FontWeight.w700,
                color: Palette.darkBlueColor,
                fontSize: 15.0,
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            height: 130.0,
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 30.0),
            decoration: BoxDecoration(
              color: Palette.primaryColor.withOpacity(0.02),
              border: Border.all(
                color: Palette.borderColor,
                width: 1.0,
              ),
              borderRadius: BorderRadius.all(Radius.circular(ThemeConstants.borderRadius / 1.5)),
            ),
            child: Scrollbar(
              isAlwaysShown: true,
              controller: siteAttributesListScrollController,
              radius: const Radius.circular(10.0),
              thickness: 2.5,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                physics: BouncingScrollPhysics(),
                controller: siteAttributesListScrollController,
                child: Column(
                  children: [
                    NameValueItem(name: "Site ID", value: "KA0015"),
                    NameValueItem(name: "Site Name", value: "Kollupitiya"),
                    NameValueItem(name: "Site Type", value: "GBT"),
                    NameValueItem(name: "region", value: "Colombo"),
                    NameValueItem(name: "Access Permission Required", value: "Yes"),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 30),
          Container(
            height: 1.0,
            width: MediaQuery.of(context).size.width,
            color: Palette.darkBlueColor.withOpacity(0.1),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacementNamed(PageRoutes.teamAllocateScreen);
                },
                child: Container(
                  width: 100.0,
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  margin: EdgeInsets.symmetric(vertical: 20.0),
                  decoration: BoxDecoration(
                    color: Palette.button_primary,
                    borderRadius: BorderRadius.all(Radius.circular(ThemeConstants.borderRadius / 1.5)),
                  ),
                  child: Text(
                    "Approve",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontFamily: ThemeConstants.font,
                      fontWeight: FontWeight.w700,
                      color: Palette.primaryColor,
                      fontSize: 12.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Container(
                  width: 100.0,
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  margin: EdgeInsets.symmetric(vertical: 20.0),
                  decoration: BoxDecoration(
                    color: Palette.button_secondary,
                    borderRadius: BorderRadius.all(Radius.circular(ThemeConstants.borderRadius / 1.5)),
                  ),
                  child: Text(
                    "Cancel",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontFamily: ThemeConstants.font,
                      fontWeight: FontWeight.w700,
                      color: Palette.jobCardDateTextColor,
                      fontSize: 12.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
