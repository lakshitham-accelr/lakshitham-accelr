import 'package:eimsky_dns_app/configs/ThemeConstants.dart';
import 'package:eimsky_dns_app/configs/palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AddNotePopUp extends StatefulWidget {
  final String initialText;
  final String hintText;

  AddNotePopUp({Key? key, this.initialText = "", this.hintText = ""}) : super(key: key);

  @override
  _AddNotePopUpState createState() => _AddNotePopUpState();
}

class _AddNotePopUpState extends State<AddNotePopUp> {
  double height = 100;
  double width = double.infinity;

  double bottom = -7.0;
  double right = -7.0;

  final textAreaController = TextEditingController();
  final textAreaFocusNode = FocusNode();

  void onDrag(double dx, double dy) {
    var newHeight = height + dy;
    var newWidth = width + dx;

    setState(() {
      height = newHeight > 0 ? newHeight : 0;
      width = newWidth > 0 ? newWidth : 0;
    });
  }

  @override
  void initState() {
    super.initState();

    textAreaFocusNode.addListener(_onFocusChange);
  }

  @override
  void dispose() {
    textAreaController.dispose();
    textAreaFocusNode.dispose();
    super.dispose();
  }

  void _onFocusChange() {
    if (!textAreaFocusNode.hasFocus) {}
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: 180.0 + height,
        child: Column(
          mainAxisSize: MainAxisSize.min,
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
                "Add Note",
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
              height: 25.0,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30.0),
              child: Stack(
                children: [
                  Container(
                    height: height,
                    width: width,
                    child: TextField(
                      minLines: null,
                      maxLines: null,
                      expands: true,
                      focusNode: textAreaFocusNode,
                      controller: textAreaController,
                      style: TextStyle(
                        color: Palette.gray_1,
                        fontSize: 12.0,
                      ),
                      textAlignVertical: TextAlignVertical.top,
                      cursorColor: Palette.primaryColor,
                      decoration: InputDecoration(
                        hintText: widget.hintText,
                        hintStyle: TextStyle(
                          color: Palette.gray_3,
                          fontSize: 12.0,
                          fontFamily: ThemeConstants.font,
                        ),
                        contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                        filled: true,
                        fillColor: Palette.primaryColor.withOpacity(0.02),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(ThemeConstants.borderRadius / 1.5),
                          borderSide: BorderSide(color: Palette.borderColor),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(ThemeConstants.borderRadius / 1.5),
                          borderSide: BorderSide(color: Palette.primaryColor),
                        ),
                      ),
                    ),
                  ),
                  (textAreaFocusNode.hasFocus)
                      ? Positioned(
                          top: 5.0,
                          right: 6.0,
                          child: GestureDetector(
                            onTap: () {
                              FocusScope.of(context).unfocus();
                            },
                            child: Container(
                              color: Colors.transparent,
                              padding: EdgeInsets.only(left: 5.0, bottom: 5.0),
                              child: Icon(
                                Icons.done,
                                size: 18.0,
                                color: Palette.primaryColor,
                              ),
                            ),
                          ))
                      : SizedBox.shrink(),
                  Positioned(
                      bottom: bottom,
                      right: right,
                      child: SizeHandler(
                        onDrag: (dx, dy) {
                          var newHeight = height + dy;

                          setState(() {
                            height = (newHeight < 100) ? 100 : newHeight;
                            // width = newWidth;
                          });
                        },
                      )),
                ],
              ),
            ),
            Spacer(),
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
                  onTap: () {
                    FocusScope.of(context).unfocus();
                    Navigator.pop(context);
                  },
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
                        fontWeight: FontWeight.w600,
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
    );
  }
}

class SizeHandler extends StatefulWidget {
  SizeHandler({Key? key, required this.onDrag});

  final Function onDrag;

  @override
  _SizeHandlerState createState() => _SizeHandlerState();
}

class _SizeHandlerState extends State<SizeHandler> {
  double initX = 0;
  double initY = 0;
  bool active = false;

  _handleDrag(details) {
    setState(() {
      initX = details.globalPosition.dx;
      initY = details.globalPosition.dy;
    });
  }

  _handleUpdate(details) {
    var dx = details.globalPosition.dx - initX;
    var dy = details.globalPosition.dy - initY;
    initX = details.globalPosition.dx;
    initY = details.globalPosition.dy;
    widget.onDrag(dx, dy);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onVerticalDragStart: (details) {
        setState(() {
          active = true;
        });
        _handleDrag(details);
      },
      onVerticalDragUpdate: _handleUpdate,
      onVerticalDragEnd: (details) {
        setState(() {
          active = false;
        });
      },
      child: Container(
        color: Colors.white.withOpacity(0.0),
        padding: EdgeInsets.only(
          top: 45.0,
          left: 35.0,
          bottom: 15.0,
          right: 15.0,
        ),
        child: SvgPicture.asset(
          "assets/icons/expand.svg",
          color: (active) ? Palette.primaryColor : Palette.gray_4,
          width: 12.0,
          height: 12.0,
        ),
      ),
    );
  }
}
