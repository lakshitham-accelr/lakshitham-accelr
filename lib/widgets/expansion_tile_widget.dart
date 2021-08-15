import 'package:eimsky_dns_app/configs/ThemeConstants.dart';
import 'package:eimsky_dns_app/configs/palette.dart';
import 'package:eimsky_dns_app/widgets/question_widget.dart';
import 'package:flutter/material.dart';

class ExpansionTileWidget extends StatefulWidget {
  const ExpansionTileWidget({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _ExpansionTileWidgetState createState() => _ExpansionTileWidgetState();
}

class _ExpansionTileWidgetState extends State<ExpansionTileWidget> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Container(
        margin: EdgeInsets.only(left: 10.0),
        child: Text(
          widget.title,
          style: TextStyle(
            fontFamily: ThemeConstants.font,
            fontWeight: FontWeight.w600,
            color: (_isExpanded) ? Palette.primaryColor : Palette.darkBlueColor,
            fontSize: 15.0,
          ),
        ),
      ),
      expandedAlignment: Alignment.center,
      expandedCrossAxisAlignment: CrossAxisAlignment.center,
      collapsedBackgroundColor: Palette.expansionTileBGColor,
      backgroundColor: Palette.expansionTileBGColor,
      onExpansionChanged: (value) {
        setState(() {
          _isExpanded = value;
        });
      },
      trailing: Container(
        width: 25.0,
        height: 25.0,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Palette.primaryColor.withOpacity(0.02),
          border: Border.all(
            color: Palette.borderColor,
            width: 1.0,
          ),
          borderRadius: BorderRadius.all(Radius.circular(ThemeConstants.borderRadius / 1.5)),
        ),
        child: RotatedBox(
          quarterTurns: (_isExpanded) ? (-4) : -1,
          child: Icon(
            Icons.keyboard_arrow_down_sharp,
            size: 20.0,
            color: (_isExpanded) ? Palette.primaryColor : Palette.darkBlueColor,
          ),
        ),
      ),
      children: [
        Container(
          color: Palette.expansionContentBGColor,
          child: Column(
            children: [
              Transform.scale(scale: 0.9, child: QuestionWidget(title: "Site Key Collected ?")),
              Transform.scale(scale: 0.9, child: QuestionWidget(title: "Site Permission Request ?")),
              SizedBox(height: 70),
            ],
          ),
        ),
      ],
    );
  }
}
