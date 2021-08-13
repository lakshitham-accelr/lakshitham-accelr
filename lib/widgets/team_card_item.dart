import 'package:flutter/material.dart';
import 'package:eimsky_dns_app/configs/ThemeConstants.dart';
import 'package:eimsky_dns_app/configs/palette.dart';

class TeamCardItem extends StatefulWidget {
  const TeamCardItem({Key? key, required this.teamCode, required this.teamName, this.isSelected = false}) : super(key: key);

  final String teamCode;
  final String teamName;
  final bool isSelected;

  @override
  _TeamCardItemState createState() => _TeamCardItemState();
}

class _TeamCardItemState extends State<TeamCardItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90.0,
      height: 70.0,
      padding: EdgeInsets.symmetric(
        horizontal: 6.0,
        vertical: 10.0,
      ),
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(
        horizontal: 6.0,
      ),
      decoration: BoxDecoration(
        color: (widget.isSelected) ? Palette.primaryColor.withOpacity(0.8) : Palette.teamCardBGColor,
        border: Border.all(
          color: (widget.isSelected) ? Palette.primaryColor : Palette.borderColor.withOpacity(0.5),
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
        children: [
          Container(
            child: Text(
              widget.teamCode,
              maxLines: 3,
              style: TextStyle(
                fontFamily: ThemeConstants.font,
                fontWeight: FontWeight.w600,
                color: (widget.isSelected) ? Colors.white : Palette.darkBlueColor,
                fontSize: 22.0,
              ),
            ),
          ),
          Container(
            child: Text(
              widget.teamName,
              maxLines: 3,
              style: TextStyle(
                fontFamily: ThemeConstants.font,
                fontWeight: FontWeight.w600,
                color: (widget.isSelected) ? Colors.white : Palette.jobCardDateTextColor,
                fontSize: 8.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
