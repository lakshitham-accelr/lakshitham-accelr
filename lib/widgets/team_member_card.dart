import 'package:flutter/material.dart';
import 'package:eimsky_dns_app/configs/ThemeConstants.dart';
import 'package:eimsky_dns_app/configs/palette.dart';

class TeamMemberCard extends StatelessWidget {
  const TeamMemberCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 145.0,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: 7.0),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Palette.borderColor,
          width: 1.0,
        ),
        borderRadius: BorderRadius.all(Radius.circular(ThemeConstants.borderRadius / 1.5)),
      ),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10.0),
            decoration: BoxDecoration(
              border: Border.all(
                color: Palette.primaryColor.withOpacity(0.2),
                width: 1.5,
              ),
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: CircleAvatar(
              radius: 13,
              foregroundColor: Palette.headerBGColor,
              backgroundImage: AssetImage("assets/mock/sample_prof_pic.jpeg"),
            ),
          ),
          Container(
            width: 85.0,
            child: Text(
              "Andy  Timmons",
              textAlign: TextAlign.start,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: TextStyle(
                fontFamily: ThemeConstants.font,
                fontWeight: FontWeight.w700,
                color: Palette.teamMemberCardTextColor,
                fontSize: 8.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
