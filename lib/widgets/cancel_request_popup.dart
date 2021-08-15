import 'package:eimsky_dns_app/configs/ThemeConstants.dart';
import 'package:eimsky_dns_app/configs/palette.dart';
import 'package:eimsky_dns_app/utils/popup_box.dart';
import 'package:eimsky_dns_app/widgets/radio_button_item.dart';
import 'package:eimsky_dns_app/widgets/add_note_popup.dart';
import 'package:flutter/material.dart';

class CancelRequestPopUp extends StatefulWidget {
  const CancelRequestPopUp({Key? key}) : super(key: key);

  @override
  _CancelRequestPopUpState createState() => _CancelRequestPopUpState();
}

class _CancelRequestPopUpState extends State<CancelRequestPopUp> {
  // Cancellation Reasons List
  List options = [
    {
      "itemName": "CBL Power Recovered",
      "isSelected": false,
    },
    {
      "itemName": "Generator Manually ON",
      "isSelected": false,
    },
    {
      "itemName": "Option One",
      "isSelected": false,
    },
    {
      "itemName": "Option Two",
      "isSelected": false,
    },
  ];

  final ScrollController reasonListScrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 475.0,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        child: Container(
          child: Column(
            children: [
              Column(
                children: [
                  Container(
                    height: 55.0,
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(top: 10.0),
                    decoration: BoxDecoration(
                      color: Palette.teamCardBGColor.withOpacity(0.8),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(ThemeConstants.borderRadius / 1.5),
                        topRight: Radius.circular(ThemeConstants.borderRadius / 1.5),
                      ),
                    ),
                    child: Text(
                      "Cancelling Request",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontFamily: ThemeConstants.font,
                        fontWeight: FontWeight.w700,
                        color: Palette.primaryColor,
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Container(
                    width: 250.0,
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.symmetric(vertical: 10.0),
                    margin: EdgeInsets.symmetric(vertical: 10.0),
                    child: Text(
                      "Reason",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontFamily: ThemeConstants.font,
                        fontWeight: FontWeight.w700,
                        color: Palette.darkBlueColor,
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    width: 250.0,
                    height: 130.0,
                    alignment: Alignment.center,
                    margin: EdgeInsets.symmetric(vertical: 5.0),
                    decoration: BoxDecoration(
                      color: Palette.primaryColor.withOpacity(0.02),
                      border: Border.all(
                        color: Palette.borderColor,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(ThemeConstants.borderRadius / 1.5)),
                    ),
                    child: Scrollbar(
                      isAlwaysShown: true,
                      controller: reasonListScrollController,
                      radius: const Radius.circular(10.0),
                      thickness: 2.5,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        physics: BouncingScrollPhysics(),
                        controller: reasonListScrollController,
                        child: Column(
                          children: List.generate(
                              options.length,
                              (index) => GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        options[index]["isSelected"] = !options[index]["isSelected"];
                                      });
                                    },
                                    child: RadioButtonItem(
                                      text: options[index]["itemName"],
                                      isOn: options[index]["isSelected"],
                                    ),
                                  )),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15.0),
                  GestureDetector(
                    onTap: () => popUpBox(
                        context,
                        AddNotePopUp(
                          hintText: "Note",
                        )),
                    child: Container(
                      width: 250.0,
                      height: 70.0,
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.symmetric(vertical: 5.0),
                      decoration: BoxDecoration(
                        color: Palette.primaryColor.withOpacity(0.02),
                        border: Border.all(
                          color: Palette.borderColor,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(ThemeConstants.borderRadius / 1.5)),
                      ),
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.notes_rounded,
                              size: 15.0,
                              color: Palette.unselectedItem,
                            ),
                            SizedBox(width: 10.0),
                            Text(
                              "Add Note",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontFamily: ThemeConstants.font,
                                fontWeight: FontWeight.w600,
                                color: Palette.unselectedItem,
                                fontSize: 10.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.0),
              Container(
                height: 1.0,
                width: MediaQuery.of(context).size.width,
                color: Palette.darkBlueColor.withOpacity(0.1),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
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
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      width: 100.0,
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(vertical: 10.0),
                      margin: EdgeInsets.symmetric(vertical: 20.0),
                      decoration: BoxDecoration(
                        color: Palette.button_secondary,
                        borderRadius: BorderRadius.all(Radius.circular(ThemeConstants.borderRadius / 1.5)),
                      ),
                      child: Text(
                        "Ignore",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontFamily: ThemeConstants.font,
                          fontWeight: FontWeight.w700,
                          color: Palette.jobCardDateTextColor,
                          fontSize: 12.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
