import 'package:eimsky_dns_app/configs/ThemeConstants.dart';
import 'package:eimsky_dns_app/configs/palette.dart';
import 'package:flutter/material.dart';

class SingleChoiceWidget extends StatefulWidget {
  const SingleChoiceWidget({Key? key, required this.value}) : super(key: key);

  final bool value;

  @override
  _SingleChoiceWidgetState createState() => _SingleChoiceWidgetState();
}

class _SingleChoiceWidgetState extends State<SingleChoiceWidget> {
  late bool tempValue;

  @override
  void initState() {
    super.initState();
    tempValue = widget.value;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          tempValue = !tempValue;
        });
      },
      child: Container(
        width: 170.0,
        height: 35.0,
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(vertical: 30.0),
        decoration: BoxDecoration(
          color: (tempValue) ? Palette.button_primary : Palette.button_secondary,
          borderRadius: BorderRadius.all(Radius.circular(ThemeConstants.borderRadius / 1.5)),
        ),
        child: Text(
          "Yes",
          style: TextStyle(
            fontFamily: ThemeConstants.font,
            fontWeight: FontWeight.w600,
            color: (tempValue) ? Palette.primaryColor : Palette.jobCardDateTextColor,
            fontSize: 15.0,
          ),
        ),
      ),
    );
  }
}
