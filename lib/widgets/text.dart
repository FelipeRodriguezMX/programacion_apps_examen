import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    Key? key,
    required this.text,
    required this.fontsize,
    required this.fontweight,
     this.color
  }) : super(key: key);
  final String text;
  final double fontsize;
  final FontWeight fontweight;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontsize,
        fontWeight: fontweight,
        color: color ?? Colors.black
      ),
    );
  }
}
