import 'package:eimsky_dns_app/configs/ThemeConstants.dart';
import 'package:eimsky_dns_app/configs/palette.dart';
import 'package:eimsky_dns_app/screens/location_map_screen.dart';
import 'package:eimsky_dns_app/utils/page_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LocationWidget extends StatefulWidget {
  LocationWidget({Key? key, this.hintText = "", this.initialText = ""}) : super(key: key);

  final String initialText;
  final String hintText;

  @override
  _LocationWidgetState createState() => _LocationWidgetState();
}

class _LocationWidgetState extends State<LocationWidget> {
  String? address;
  double? latitude;
  double? longitude;

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
    if (address != null && latitude != null && longitude != null) {
      textAreaController.text = address! + ("  (${latitude!} , ${longitude!})");
    }

    return Container(
      margin: EdgeInsets.symmetric(vertical: 30.0, horizontal: 15.0),
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
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
                        color: Palette.darkBlueColor,
                        fontSize: 12.0,
                      ),
                      textAlignVertical: TextAlignVertical.top,
                      cursorColor: Palette.primaryColor,
                      decoration: InputDecoration(
                        hintText: widget.hintText,
                        hintStyle: TextStyle(
                          color: Palette.unselectedItem,
                          fontSize: 12.0,
                          fontFamily: ThemeConstants.font,
                        ),
                        contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                        filled: true,
                        fillColor: Palette.textFieldFillColor,
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
          ),
          SizedBox(width: 5.0),
          InkWell(
            onTap: () {
              FocusScope.of(context).unfocus();
              Navigator.of(context).pushNamed(
                PageRoutes.locationMapScreen,
                arguments: new LocationMapArguments(setLocationDetailsFunc: updateLocationStatus),
              );
            },
            child: Container(
              margin: EdgeInsets.only(left: 7.0),
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Palette.primaryColor,
                borderRadius: BorderRadius.circular(ThemeConstants.borderRadius / 1.5),
              ),
              child: Icon(
                Icons.location_pin,
                color: Colors.white,
                size: 15.0,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void updateLocationStatus(String newAddress, double newLatitude, double newLongitude) {
    setState(() {
      address = newAddress;
      latitude = newLatitude;
      longitude = newLongitude;
    });
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
