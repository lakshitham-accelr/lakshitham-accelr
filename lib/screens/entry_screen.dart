import 'package:eimsky_dns_app/configs/ThemeConstants.dart';
import 'package:eimsky_dns_app/configs/palette.dart';
import 'package:eimsky_dns_app/screens/home_page_screen.dart';
import 'package:eimsky_dns_app/screens/jobs_screen.dart';
import 'package:flutter/material.dart';

class EntryScreen extends StatefulWidget {
  const EntryScreen({Key? key}) : super(key: key);

  @override
  EntryScreenState createState() => EntryScreenState();
}

class EntryScreenState extends State<EntryScreen> {
  int currentPageIndex = 0;
  List<Widget> pageList = [];

  @override
  void initState() {
    super.initState();

    pageList = <Widget>[
      HomePageScreen(focusPageFunction: changePage),
      JobsScreen(),
      Container(),
      Container(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pageList[currentPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentPageIndex,
        onTap: (index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        elevation: 0,
        selectedLabelStyle: TextStyle(
          fontFamily: ThemeConstants.font,
          fontWeight: FontWeight.w600,
          letterSpacing: 0.5,
          fontSize: 8.0,
        ),
        unselectedLabelStyle: TextStyle(
          fontFamily: ThemeConstants.font,
          fontWeight: FontWeight.w600,
          letterSpacing: 0.5,
          fontSize: 8.0,
        ),
        backgroundColor: Palette.primaryColor.withOpacity(0.08),
        selectedItemColor: Palette.primaryColor,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Container(
              width: 22.0,
              height: 22.0,
              alignment: Alignment.center,
              margin: EdgeInsets.only(bottom: 3.0, top: 7.0),
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      width: 10.0,
                      height: 10.0,
                      decoration: BoxDecoration(
                        color: (currentPageIndex == 0) ? Palette.primaryColor : Palette.unselectedItem,
                        borderRadius: BorderRadius.all(Radius.circular(3)),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    top: 0,
                    child: Container(
                      width: 10.0,
                      height: 10.0,
                      decoration: BoxDecoration(
                        color: (currentPageIndex == 0) ? Palette.primaryColor.withOpacity(0.3) : Palette.unselectedItem.withOpacity(0.3),
                        borderRadius: BorderRadius.all(Radius.circular(3)),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    bottom: 0,
                    child: Container(
                      width: 10.0,
                      height: 10.0,
                      decoration: BoxDecoration(
                        color: (currentPageIndex == 0) ? Palette.primaryColor : Palette.unselectedItem,
                        borderRadius: BorderRadius.all(Radius.circular(3)),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: Container(
                      width: 10.0,
                      height: 10.0,
                      decoration: BoxDecoration(
                        color: (currentPageIndex == 0) ? Palette.primaryColor : Palette.unselectedItem,
                        borderRadius: BorderRadius.all(Radius.circular(3)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Container(
              width: 22.0,
              height: 22.0,
              alignment: Alignment.center,
              margin: EdgeInsets.only(bottom: 3.0, top: 7.0),
              child: Icon(Icons.format_list_numbered_sharp),
            ),
            label: "Jobs",
          ),
          BottomNavigationBarItem(
            icon: Stack(
              children: [
                Container(
                  width: 35.0,
                  height: 22.0,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(bottom: 3.0, top: 7.0),
                  child: Icon(Icons.notifications),
                ),
                Positioned(
                  right: 0.0,
                  top: 5.0,
                  child: Container(
                    height: 13,
                    width: 13,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Palette.primaryColor,
                    ),
                    child: Text(
                      "12",
                      style: TextStyle(
                        fontFamily: ThemeConstants.font,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.5,
                        color: Colors.white,
                        fontSize: 8.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            label: "Notifications",
          ),
          BottomNavigationBarItem(
            icon: Container(
              width: 22.0,
              height: 22.0,
              alignment: Alignment.center,
              margin: EdgeInsets.only(bottom: 3.0, top: 7.0),
              child: Icon(Icons.schedule_sharp),
            ),
            label: "Schedules",
          ),
        ],
      ),
    );
  }

  changePage(int newPageIndex) {
    setState(() {
      currentPageIndex = newPageIndex;
    });
  }
}
