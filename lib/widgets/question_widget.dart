import 'package:eimsky_dns_app/configs/ThemeConstants.dart';
import 'package:eimsky_dns_app/configs/palette.dart';
import 'package:eimsky_dns_app/utils/popup_box.dart';
import 'package:eimsky_dns_app/widgets/add_note_popup.dart';
import 'package:flutter/material.dart';

class QuestionWidget extends StatelessWidget {
  const QuestionWidget({Key? key, required this.title, required this.responseTypeWidget}) : super(key: key);

  final String title;
  final Widget responseTypeWidget;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Container(
        width: double.maxFinite,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Palette.borderColor,
            width: 1.0,
          ),
          borderRadius: BorderRadius.all(Radius.circular(ThemeConstants.borderRadius / 1.0)),
        ),
        margin: EdgeInsets.symmetric(horizontal: 25.0, vertical: 20.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
              child: Text(
                title,
                style: TextStyle(
                  fontFamily: ThemeConstants.font,
                  fontWeight: FontWeight.w600,
                  color: Palette.darkBlueColor,
                  fontSize: 15.0,
                ),
              ),
            ),
            Container(
              height: 1.0,
              color: Palette.borderColor.withOpacity(0.5),
            ),
            responseTypeWidget,
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          print("Add Note");

                          // Add Note PopUp
                          popUpBox(
                              context,
                              AddNotePopUp(
                                hintText: "Note",
                              ));
                        },
                        child: Container(
                          color: Colors.transparent,
                          padding: EdgeInsets.all(5.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.sticky_note_2_outlined,
                                size: 11.0,
                                color: Palette.unselectedItem,
                              ),
                              SizedBox(width: 7),
                              Text(
                                "Note",
                                style: TextStyle(
                                  fontFamily: ThemeConstants.font,
                                  fontWeight: FontWeight.w600,
                                  color: Palette.unselectedItem,
                                  fontSize: 11.0,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          print("Add Media");
                        },
                        child: Container(
                          color: Colors.transparent,
                          padding: EdgeInsets.all(5.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.image_outlined,
                                size: 11.0,
                                color: Palette.unselectedItem,
                              ),
                              SizedBox(width: 7),
                              Text(
                                "Media",
                                style: TextStyle(
                                  fontFamily: ThemeConstants.font,
                                  fontWeight: FontWeight.w600,
                                  color: Palette.unselectedItem,
                                  fontSize: 11.0,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      GestureDetector(
                        onTap: () {
                          print("Add Action");
                        },
                        child: Container(
                          color: Colors.transparent,
                          padding: EdgeInsets.all(5.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.add_box_outlined,
                                size: 11.0,
                                color: Palette.unselectedItem,
                              ),
                              SizedBox(width: 7),
                              Text(
                                "Action",
                                style: TextStyle(
                                  fontFamily: ThemeConstants.font,
                                  fontWeight: FontWeight.w600,
                                  color: Palette.unselectedItem,
                                  fontSize: 11.0,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
