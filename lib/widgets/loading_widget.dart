import 'package:eimsky_dns_app/configs/palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SpinKitWanderingCubes(
        color: Palette.primaryColor,
        size: 25.0,
        duration: Duration(seconds: 1),
      ),
    );
  }
}
