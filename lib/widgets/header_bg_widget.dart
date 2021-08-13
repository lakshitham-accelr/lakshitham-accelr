import 'package:flutter/material.dart';
import 'package:eimsky_dns_app/configs/palette.dart';

class HeaderBGWidget extends StatelessWidget {
  const HeaderBGWidget({Key? key, this.bannerHeight = 140.0}) : super(key: key);

  final double bannerHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: bannerHeight,
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
