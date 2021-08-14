import 'package:eimsky_dns_app/configs/ThemeConstants.dart';
import 'package:eimsky_dns_app/configs/palette.dart';
import 'package:flutter/material.dart';

class JobScreenTab extends StatelessWidget {
  const JobScreenTab({Key? key, required this.tabName, required this.isSelectedTab}) : super(key: key);

  final String tabName;
  final bool isSelectedTab;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130.0,
      height: 52.0,
      margin: EdgeInsets.symmetric(horizontal: 3.0),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: isSelectedTab ? Palette.borderColor.withOpacity(0.5) : Palette.gray_6,
          width: 2.0,
        ),
        borderRadius: BorderRadius.all(Radius.circular(ThemeConstants.borderRadius / 2)),
        boxShadow: [
          BoxShadow(
            color: Palette.darkBlueColor.withOpacity(0.1),
            spreadRadius: 0,
            blurRadius: 30,
            offset: Offset(0, 7), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 35.0,
            height: 35.0,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: isSelectedTab ? Palette.primaryColor.withOpacity(0.1) : Palette.gray_6,
              borderRadius: BorderRadius.all(Radius.circular(ThemeConstants.borderRadius / 2)),
            ),
            child: Icon(
              Icons.schedule_rounded,
              color: isSelectedTab ? Palette.primaryColor : Palette.gray_4,
              size: 20.0,
            ),
          ),
          Container(
            width: 60.0,
            margin: EdgeInsets.only(left: 10.0),
            child: Text(
              tabName,
              maxLines: 3,
              style: TextStyle(
                fontFamily: ThemeConstants.font,
                fontWeight: FontWeight.w600,
                color: isSelectedTab ? Palette.primaryColor : Palette.gray_3,
                fontSize: 10.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
