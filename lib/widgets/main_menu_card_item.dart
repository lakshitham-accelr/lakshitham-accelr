import 'package:flutter/material.dart';
import 'package:eimsky_dns_app/configs/ThemeConstants.dart';
import 'package:eimsky_dns_app/configs/palette.dart';

class MainMenuCardItem extends StatefulWidget {
  const MainMenuCardItem({Key? key, this.count, required this.text, this.isHighlighted = false}) : super(key: key);

  final int? count;
  final String text;
  final bool isHighlighted;

  @override
  _MainMenuCardItemState createState() => _MainMenuCardItemState();
}

class _MainMenuCardItemState extends State<MainMenuCardItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 95.0,
      height: 95.0,
      margin: EdgeInsets.symmetric(horizontal: 6.0),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Palette.borderColor.withOpacity(0.5),
          width: 2.0,
        ),
        borderRadius: BorderRadius.all(Radius.circular(ThemeConstants.borderRadius)),
        boxShadow: [
          BoxShadow(
            color: Palette.darkBlueColor.withOpacity(0.1),
            spreadRadius: 0,
            blurRadius: 30,
            offset: Offset(0, 15), // changes position of shadow
          ),
        ],
      ),
      child: Stack(
        children: [
          (widget.count != null)
              ? Positioned(
                  top: 10.0,
                  right: 10.0,
                  child: Container(
                    width: 35.0,
                    height: 35.0,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Palette.primaryColor.withOpacity(0.1),
                      borderRadius: BorderRadius.all(Radius.circular(ThemeConstants.borderRadius)),
                    ),
                    child: Text(
                      widget.count.toString(),
                      style: TextStyle(
                        fontFamily: ThemeConstants.font,
                        fontWeight: FontWeight.w600,
                        color: Palette.primaryColor,
                        fontSize: 17.0,
                      ),
                    ),
                  ),
                )
              : SizedBox.shrink(),
          Positioned(
            bottom: 10.0,
            left: 10.0,
            child: Container(
              width: 80.0,
              child: Text(
                widget.text,
                maxLines: 3,
                style: TextStyle(
                  fontFamily: ThemeConstants.font,
                  fontWeight: FontWeight.w600,
                  color: (widget.isHighlighted) ? Palette.primaryColor : Palette.darkBlueColor,
                  fontSize: 9.0,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0.0,
            left: 0.0,
            right: 0.0,
            child: (widget.isHighlighted)
                ? Container(
                    width: 80.0,
                    height: 3.0,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                      color: Palette.primaryColor,
                      borderRadius: BorderRadius.all(Radius.circular(ThemeConstants.borderRadius)),
                    ),
                  )
                : SizedBox.shrink(),
          )
        ],
      ),
    );
  }
}
