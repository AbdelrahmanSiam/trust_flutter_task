import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  final double height;
  final double thickness;
  final Color color;
  final double indent;
  final double endIndent;
  final EdgeInsetsGeometry? margin;

  const CustomDivider({
    Key? key,
    this.height = 1.0,
    this.thickness = 1.0,
    this.color = Colors.grey,
    this.indent = 0.0,
    this.endIndent = 0.0,
    this.margin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      height: height,
      child: Divider(
        height: height,
        thickness: thickness,
        color: color,
        indent: indent,
        endIndent: endIndent,
      ),
    );
  }
}