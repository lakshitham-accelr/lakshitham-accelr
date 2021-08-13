import 'package:flutter/material.dart';
import 'package:eimsky_dns_app/configs/palette.dart';
import 'package:eimsky_dns_app/configs/ThemeConstants.dart';

class StatusFilterPopUp extends StatefulWidget {
  const StatusFilterPopUp({Key? key}) : super(key: key);

  @override
  _StatusFilterPopUpState createState() => _StatusFilterPopUpState();
}

class _StatusFilterPopUpState extends State<StatusFilterPopUp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 270.0,
      margin: EdgeInsets.only(top: 30.0),
      child: Column(
        children: [
          Column(
            children: [
              Container(
                width: 250.0,
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                margin: EdgeInsets.symmetric(vertical: 5.0),
                decoration: BoxDecoration(
                  color: Palette.approvalPending_red,
                  border: Border.all(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(ThemeConstants.borderRadius / 1.5)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(width: 20),
                    Text(
                      "Approval Pending",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontFamily: ThemeConstants.font,
                        fontWeight: FontWeight.w700,
                        color: Palette.approvalPendingText_red,
                        fontSize: 12.0,
                      ),
                    ),
                    Icon(
                      Icons.done,
                      size: 20.0,
                      color: Palette.approvalPendingText_red,
                    ),
                  ],
                ),
              ),
              Container(
                width: 250.0,
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                margin: EdgeInsets.symmetric(vertical: 5.0),
                decoration: BoxDecoration(
                  color: Palette.installed_green,
                  border: Border.all(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(ThemeConstants.borderRadius / 1.5)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(width: 20),
                    Text(
                      "Installed",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontFamily: ThemeConstants.font,
                        fontWeight: FontWeight.w700,
                        color: Palette.installedText_green,
                        fontSize: 12.0,
                      ),
                    ),
                    Icon(
                      Icons.done,
                      size: 20.0,
                      color: Palette.installedText_green,
                    ),
                  ],
                ),
              ),
              Container(
                width: 250.0,
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                margin: EdgeInsets.symmetric(vertical: 5.0),
                decoration: BoxDecoration(
                  color: Palette.dispatched_yellow,
                  border: Border.all(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(ThemeConstants.borderRadius / 1.5)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(width: 20),
                    Text(
                      "Dispatched",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontFamily: ThemeConstants.font,
                        fontWeight: FontWeight.w700,
                        color: Palette.dispatchedText_yellow,
                        fontSize: 12.0,
                      ),
                    ),
                    Icon(
                      Icons.done,
                      size: 20.0,
                      color: Palette.dispatchedText_yellow,
                    ),
                  ],
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
                    "Done",
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
