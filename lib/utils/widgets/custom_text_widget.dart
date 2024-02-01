import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CustomTextWidget extends StatelessWidget {
  final Color? color;
  final FontWeight? fontWeight;
  final String title;
  final double? fontSize;

  const CustomTextWidget(
      {super.key,
      this.color = Colors.black,
      this.fontWeight,
      required this.title,
      this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
    );
  }
}
