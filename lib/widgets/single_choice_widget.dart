import 'package:eimsky_dns_app/configs/ThemeConstants.dart';
import 'package:eimsky_dns_app/configs/palette.dart';
import 'package:flutter/material.dart';

class SingleChoiceWidget extends StatelessWidget {
  const SingleChoiceWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170.0,
      height: 35.0,
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(vertical: 30.0),
      decoration: BoxDecoration(
        color: Palette.button_primary,
        borderRadius: BorderRadius.all(Radius.circular(ThemeConstants.borderRadius / 1.0)),
      ),
      child: Text(
        "Yes",
        style: TextStyle(
          fontFamily: ThemeConstants.font,
          fontWeight: FontWeight.w600,
          color: Palette.primaryColor,
          fontSize: 15.0,
        ),
      ),
    );
  }
}
