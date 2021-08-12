import 'dart:ui';

import 'package:eimsky_dns_app/configs/ThemeConstants.dart';
import 'package:eimsky_dns_app/configs/palette.dart';
import 'package:flutter/material.dart';

void popUpBox(BuildContext context, Widget content) {
  showDialog(
      barrierColor: Palette.gray_6.withOpacity(0.8),
      context: context,
      builder: (_) {
        return BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
          child: AlertDialog(
            content: content,
            elevation: 0.0,
            titlePadding: EdgeInsets.zero,
            contentPadding: EdgeInsets.zero,
            insetPadding: EdgeInsets.all(25),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(ThemeConstants.borderRadius / 1.5))),
          ),
        );
      });
}
