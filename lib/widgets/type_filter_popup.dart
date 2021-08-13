import 'package:flutter/material.dart';
import 'package:eimsky_dns_app/configs/palette.dart';
import 'package:eimsky_dns_app/configs/ThemeConstants.dart';


class TypeFilterPopUp extends StatefulWidget {
  const TypeFilterPopUp({Key? key}) : super(key: key);

  @override
  _TypeFilterPopUpState createState() => _TypeFilterPopUpState();
}

class _TypeFilterPopUpState extends State<TypeFilterPopUp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 305.0,
      margin: EdgeInsets.only(top: 30.0),
      child: Column(
        children: [
          Column(
            children: [
              Container(
                width: 250.0,
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(vertical: 10.0),
                margin: EdgeInsets.symmetric(vertical: 5.0),
                decoration: BoxDecoration(
                  color: Palette.primaryColor.withOpacity(0.02),
                  border: Border.all(
                    color: Palette.borderColor,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(ThemeConstants.borderRadius / 1.5)),
                ),
                child: Text(
                  "Portable Generator",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontFamily: ThemeConstants.font,
                    fontWeight: FontWeight.w700,
                    color: Palette.primaryColor,
                    fontSize: 12.0,
                  ),
                ),
              ),
              Container(
                width: 230.0,
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(vertical: 10.0),
                margin: EdgeInsets.symmetric(vertical: 5.0),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(ThemeConstants.borderRadius / 1.5)),
                ),
                child: Text(
                  "PIS",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontFamily: ThemeConstants.font,
                    fontWeight: FontWeight.w700,
                    color: Palette.unselectedItem,
                    fontSize: 12.0,
                  ),
                ),
              ),
              Container(
                width: 230.0,
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(vertical: 10.0),
                margin: EdgeInsets.symmetric(vertical: 5.0),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(ThemeConstants.borderRadius / 1.5)),
                ),
                child: Text(
                  "Refuel",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontFamily: ThemeConstants.font,
                    fontWeight: FontWeight.w700,
                    color: Palette.unselectedItem,
                    fontSize: 12.0,
                  ),
                ),
              ),
              Container(
                width: 230.0,
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(vertical: 10.0),
                margin: EdgeInsets.symmetric(vertical: 5.0),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(ThemeConstants.borderRadius / 1.5)),
                ),
                child: Text(
                  "Vehicle Management",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontFamily: ThemeConstants.font,
                    fontWeight: FontWeight.w700,
                    color: Palette.unselectedItem,
                    fontSize: 12.0,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
          Container(
            height: 1.0,
            width: MediaQuery.of(context).size.width,
            color: Palette.darkBlueColor.withOpacity(0.1),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 100.0,
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(vertical: 10.0),
                margin: EdgeInsets.symmetric(vertical: 20.0),
                decoration: BoxDecoration(
                  color: Palette.button_primary,
                  borderRadius: BorderRadius.all(Radius.circular(ThemeConstants.borderRadius / 1.5)),
                ),
                child: Text(
                  "Done",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontFamily: ThemeConstants.font,
                    fontWeight: FontWeight.w700,
                    color: Palette.primaryColor,
                    fontSize: 12.0,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                width: 100.0,
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(vertical: 10.0),
                margin: EdgeInsets.symmetric(vertical: 20.0),
                decoration: BoxDecoration(
                  color: Palette.button_secondary,
                  borderRadius: BorderRadius.all(Radius.circular(ThemeConstants.borderRadius / 1.5)),
                ),
                child: Text(
                  "Cancel",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontFamily: ThemeConstants.font,
                    fontWeight: FontWeight.w700,
                    color: Palette.jobCardDateTextColor,
                    fontSize: 12.0,
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
