import 'package:eimsky_dns_app/utils/page_routes.dart';
import 'package:flutter/material.dart';
import 'package:eimsky_dns_app/configs/palette.dart';
import 'package:eimsky_dns_app/configs/ThemeConstants.dart';

class JobRequestPopUp extends StatefulWidget {
  const JobRequestPopUp({Key? key}) : super(key: key);

  @override
  _JobRequestPopUpState createState() => _JobRequestPopUpState();
}

class _JobRequestPopUpState extends State<JobRequestPopUp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 235.0,
      margin: EdgeInsets.only(top: 15.0),
      child: Column(
        children: [
          Column(
            children: [
              Container(
                width: 250.0,
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.symmetric(vertical: 10.0),
                margin: EdgeInsets.symmetric(vertical: 10.0),
                child: Text(
                  "Approve request ?",
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
                width: 150.0,
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(vertical: 10.0),
                margin: EdgeInsets.symmetric(vertical: 5.0),
                decoration: BoxDecoration(
                  color: Palette.primaryColor.withOpacity(0.02),
                  border: Border.all(
                    color: Palette.borderColor,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(ThemeConstants.borderRadius / 1.5)),
                ),
                child: Text(
                  "PG - 23",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontFamily: ThemeConstants.font,
                    fontWeight: FontWeight.w700,
                    color: Palette.primaryColor,
                    fontSize: 17.0,
                  ),
                ),
              ),
            ],
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
