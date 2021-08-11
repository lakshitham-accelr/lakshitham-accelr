import 'package:flutter/material.dart';
import 'package:eimsky_dns_app/configs/palette.dart';

class UserAvatarWidget extends StatefulWidget {
  const UserAvatarWidget({Key? key}) : super(key: key);

  @override
  _UserAvatarWidgetState createState() => _UserAvatarWidgetState();
}

class _UserAvatarWidgetState extends State<UserAvatarWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.all(2.5),
          decoration: BoxDecoration(
            border: Border.all(
              color: Palette.primaryColor.withOpacity(0.2),
              width: 2.0,
            ),
            shape: BoxShape.circle,
            color: Colors.white,
          ),
          child: CircleAvatar(
            radius: 30,
            foregroundColor: Palette.headerBGColor,
            backgroundImage: AssetImage("assets/mock/sample_prof_pic.jpeg"),
          ),
        ),
        Positioned(
          right: 5.0,
          top: 10.0,
          child: Container(
            height: 10,
            width: 10,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Palette.userOffline,
            ),
          ),
        )
      ],
    );
  }
}
