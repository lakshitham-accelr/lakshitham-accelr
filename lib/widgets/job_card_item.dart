import 'package:flutter/material.dart';
import 'package:eimsky_dns_app/configs/ThemeConstants.dart';
import 'package:eimsky_dns_app/configs/palette.dart';

class JobCardItem extends StatefulWidget {
  const JobCardItem({Key? key, required this.code, required this.count, required this.status, required this.statusTextColor, required this.statusBoxColor, required this.date})
      : super(key: key);

  final String code;
  final int count;
  final String status;
  final Color statusTextColor;
  final Color statusBoxColor;
  final String date;

  @override
  _JobCardItemState createState() => _JobCardItemState();
}

class _JobCardItemState extends State<JobCardItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 105.0,
      height: 105.0,
      padding: EdgeInsets.symmetric(
        horizontal: 6.0,
        vertical: 10.0,
      ),
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(
        horizontal: 6.0,
      ),
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                child: Text(
                  widget.code,
                  maxLines: 3,
                  style: TextStyle(
                    fontFamily: ThemeConstants.font,
                    fontWeight: FontWeight.w600,
                    color: Palette.darkBlueColor,
                    fontSize: 20.0,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                child: Text("-"),
              ),
              Container(
                child: Text(
                  widget.count.toString(),
                  maxLines: 3,
                  style: TextStyle(
                    fontFamily: ThemeConstants.font,
                    fontWeight: FontWeight.w600,
                    color: Palette.darkBlueColor,
                    fontSize: 15.0,
                  ),
                ),
              ),
            ],
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(
              vertical: 5.0,
            ),
            margin: EdgeInsets.symmetric(
              vertical: 7.0,
            ),
            decoration: BoxDecoration(
              color: widget.statusBoxColor,
              borderRadius: BorderRadius.all(Radius.circular(ThemeConstants.borderRadius / 2)),
            ),
            child: Text(
              widget.status,
              style: TextStyle(
                fontFamily: ThemeConstants.font,
                fontWeight: FontWeight.w600,
                color: widget.statusTextColor,
                fontSize: 7.0,
              ),
            ),
          ),
          Container(
            child: Text(
              widget.date,
              maxLines: 3,
              style: TextStyle(
                fontFamily: ThemeConstants.font,
                fontWeight: FontWeight.w600,
                color: Palette.jobCardDateTextColor,
                fontSize: 10.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
