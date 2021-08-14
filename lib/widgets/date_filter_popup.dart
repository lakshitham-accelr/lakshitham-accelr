import 'package:eimsky_dns_app/configs/ThemeConstants.dart';
import 'package:eimsky_dns_app/configs/palette.dart';
import 'package:flutter/material.dart';

class DateFilterPopUp extends StatefulWidget {
  const DateFilterPopUp({Key? key, required this.selectDateFilterOptionList, this.selectDateFilterOption = 0, required this.selectDateFilterOptionFunction}) : super(key: key);

  final List<String> selectDateFilterOptionList;
  final int selectDateFilterOption;
  final Function selectDateFilterOptionFunction;

  @override
  _DateFilterPopUpState createState() => _DateFilterPopUpState();
}

class _DateFilterPopUpState extends State<DateFilterPopUp> {
  int tempSelectedOption = 0;

  @override
  void initState() {
    super.initState();
    tempSelectedOption = widget.selectDateFilterOption;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 495.0,
      margin: EdgeInsets.only(top: 30.0),
      child: Column(
        children: [
          Column(
            children: List.generate(widget.selectDateFilterOptionList.length, (index) {
              return getOptionItem(index);
            }),
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
              GestureDetector(
                onTap: () {
                  widget.selectDateFilterOptionFunction(tempSelectedOption);
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
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget getOptionItem(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          tempSelectedOption = index;
        });
      },
      child: Container(
        width: 230.0,
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 10.0),
        margin: EdgeInsets.symmetric(vertical: 5.0),
        decoration: BoxDecoration(
          color: (tempSelectedOption == index) ? Palette.primaryColor.withOpacity(0.05) : Colors.transparent,
          border: Border.all(
            color: (tempSelectedOption == index) ? Palette.borderColor : Colors.transparent,
            width: 1.0,
          ),
          borderRadius: BorderRadius.all(Radius.circular(ThemeConstants.borderRadius / 1.5)),
        ),
        child: Text(
          widget.selectDateFilterOptionList[index],
          textAlign: TextAlign.start,
          style: TextStyle(
            fontFamily: ThemeConstants.font,
            fontWeight: FontWeight.w700,
            color: (tempSelectedOption == index) ? Palette.primaryColor : Palette.unselectedItem,
            fontSize: 12.0,
          ),
        ),
      ),
    );
  }
}
