import 'package:eimsky_dns_app/configs/ThemeConstants.dart';
import 'package:eimsky_dns_app/configs/palette.dart';
import 'package:eimsky_dns_app/widgets/response_type_widgets/single_choice_widget.dart';
import 'package:flutter/material.dart';

class QuestionWidget extends StatelessWidget {
  const QuestionWidget({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
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
          SingleChoiceWidget(value: true),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
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
                  ],
                ),
                Row(
                  children: [
                    Container(
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
                    SizedBox(width: 20),
                    Container(
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
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
