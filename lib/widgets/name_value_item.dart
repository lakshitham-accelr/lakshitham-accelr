import 'package:eimsky_dns_app/configs/ThemeConstants.dart';
import 'package:eimsky_dns_app/configs/palette.dart';
import 'package:flutter/material.dart';

class NameValueItem extends StatelessWidget {
  const NameValueItem({Key? key, required this.name, this.value}) : super(key: key);

  final String name;
  final String? value;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
      color: Colors.transparent,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            name,
            textAlign: TextAlign.start,
            style: TextStyle(
              fontFamily: ThemeConstants.font,
              fontWeight: FontWeight.w600,
              color: Palette.unselectedItem,
              fontSize: 12.0,
            ),
          ),
          Text(
            "-",
            textAlign: TextAlign.start,
            style: TextStyle(
              fontFamily: ThemeConstants.font,
              fontWeight: FontWeight.w600,
              color: Palette.unselectedItem,
              fontSize: 12.0,
            ),
          ),
          Text(
            value ?? " ",
            textAlign: TextAlign.start,
            style: TextStyle(
              fontFamily: ThemeConstants.font,
              fontWeight: FontWeight.w600,
              color: Palette.primaryColor,
              fontSize: 12.0,
            ),
          ),
        ],
      ),
    );
  }
}
