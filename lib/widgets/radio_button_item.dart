import 'package:eimsky_dns_app/configs/ThemeConstants.dart';
import 'package:eimsky_dns_app/configs/palette.dart';
import 'package:flutter/material.dart';

class RadioButtonItem extends StatelessWidget {
  const RadioButtonItem({Key? key, required this.text, this.isOn = false}) : super(key: key);

  final String text;
  final bool isOn;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            textAlign: TextAlign.start,
            style: TextStyle(
              fontFamily: ThemeConstants.font,
              fontWeight: FontWeight.w600,
              color: Palette.unselectedItem,
              fontSize: 12.0,
            ),
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 17,
                width: 17,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Palette.primaryColor,
                ),
              ),
              Container(
                height: 14,
                width: 14,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: (isOn) ? Palette.primaryColor : Colors.white,
                  border: Border.all(
                    color: Colors.white,
                    width: 1.5,
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
