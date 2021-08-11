import 'package:flutter/material.dart';
import 'package:eimsky_dns_app/configs/ThemeConstants.dart';
import 'package:eimsky_dns_app/configs/palette.dart';

class SimplePageSectionWidget extends StatelessWidget {
  const SimplePageSectionWidget({Key? key, required this.sectionName}) : super(key: key);

  final String sectionName;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          sectionName,
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
    );
  }
}
