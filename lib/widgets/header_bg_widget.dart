import 'package:flutter/material.dart';
import 'package:eimsky_dns_app/configs/palette.dart';

class HeaderBGWidget extends StatelessWidget {
  const HeaderBGWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140.0,
      decoration: BoxDecoration(
          color: Palette.headerBGColor,
          image: DecorationImage(
            image: AssetImage("assets/images/BG_DNS.png"),
            fit: BoxFit.cover,
            colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.4), BlendMode.dstATop),
            alignment: Alignment.topCenter,
          )),
    );
  }
}
