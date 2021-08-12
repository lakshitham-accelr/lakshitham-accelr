import 'package:flutter/material.dart';

class ColorDotWidget extends StatelessWidget {
  const ColorDotWidget({Key? key, required this.dotSize, required this.dotColor}) : super(key: key);

  final double dotSize;
  final Color dotColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: dotSize,
      width: dotSize,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: dotColor,
      ),
    );
  }
}
