import 'package:flutter/material.dart';
import 'package:eimsky_dns_app/configs/ThemeConstants.dart';
import 'package:eimsky_dns_app/configs/palette.dart';

class SelectedTeamCardItem extends StatefulWidget {
  const SelectedTeamCardItem({Key? key, required this.teamCode, required this.teamName}) : super(key: key);

  final String teamCode;
  final String teamName;

  @override
  _SelectedTeamCardItemState createState() => _SelectedTeamCardItemState();
}

class _SelectedTeamCardItemState extends State<SelectedTeamCardItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 115.0,
      height: 115.0,
      padding: EdgeInsets.only(left: 15.0),
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        color: Palette.primaryColor.withOpacity(0.8),
        border: Border.all(
          color: Palette.primaryColor,
          width: 2.0,
        ),
        borderRadius: BorderRadius.all(Radius.circular(ThemeConstants.borderRadius / 1.5)),
        boxShadow: [
          BoxShadow(
            color: Palette.darkBlueColor.withOpacity(0.1),
            spreadRadius: 0,
            blurRadius: 20,
            offset: Offset(0, 15), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Text(
              widget.teamCode,
              maxLines: 3,
              style: TextStyle(
                fontFamily: ThemeConstants.font,
                fontWeight: FontWeight.w600,
                color: Colors.white,
                fontSize: 22.0,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 5),
            child: Text(
              widget.teamName,
              maxLines: 3,
              style: TextStyle(
                fontFamily: ThemeConstants.font,
                fontWeight: FontWeight.w600,
                color: Colors.white,
                fontSize: 10.0,
              ),
            ),
          ),
          Container(
            width: 30.0,
            height: 30.0,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Palette.teamCardBGColor,
              borderRadius: BorderRadius.all(Radius.circular(ThemeConstants.borderRadius / 2)),
            ),
            child: Text(
              "12",
              style: TextStyle(
                fontFamily: ThemeConstants.font,
                fontWeight: FontWeight.w600,
                color: Palette.primaryColor,
                fontSize: 14.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
