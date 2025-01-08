import 'package:champs/constant.dart';
import 'package:flutter/material.dart';
class CustomSizedbox extends StatelessWidget {
  const CustomSizedbox({super.key, required this.text, required this.fontSize,
  required this.color, required this.fontWight});

  final String text;
   final double fontSize;
   final Color color;
   // ignore: prefer_typing_uninitialized_variables
   final fontWight ;

   @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 344,
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: color,
          fontSize: fontSize,
          fontFamily: fontName,
          fontWeight: fontWight,
        ),
      ),
    );
  }
}
