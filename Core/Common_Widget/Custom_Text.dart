import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  CustomText({
    required this.name,
    required this.size,
    required this.color,
    this.fontweight,
    this.maxLines,
    Key? key,
  }) : super(key: key);
  final String name;
  final double size;
  final Color color;
  final FontWeight? fontweight;
  int? maxLines;
  @override
  Widget build(BuildContext context) {
    return Text(
      "$name",
      maxLines: maxLines,
      style: TextStyle(
          fontSize: size,
          color: color,
          fontWeight: fontweight ?? FontWeight.normal),
    );
  }
}
