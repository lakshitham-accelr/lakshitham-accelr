import 'package:eimsky_dns_app/configs/ThemeConstants.dart';
import 'package:eimsky_dns_app/configs/palette.dart';
import 'package:flutter/material.dart';

class InstructionWidget extends StatelessWidget {
  const InstructionWidget({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      margin: EdgeInsets.symmetric(vertical: 30.0, horizontal: 15.0),
      decoration: BoxDecoration(
        color: Palette.textFieldFillColor,
        border: Border.all(
          color: Palette.borderColor,
          width: 1.0,
        ),
        borderRadius: BorderRadius.all(Radius.circular(ThemeConstants.borderRadius / 1.5)),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: Palette.darkBlueColor,
          fontFamily: ThemeConstants.font,
          fontSize: 12.0,
        ),
      ),
    );
  }
}
