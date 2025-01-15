import 'package:champs/constant.dart';
import 'package:flutter/material.dart';
class CustomTextField extends StatefulWidget {
  final String label;
  const CustomTextField({super.key,
    required this.label,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
 
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 345,
      height: 56,
      padding: const EdgeInsets.only(top: 4, left: 16, bottom: 4),
      decoration: const ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(4),
            topRight: Radius.circular(4),
          ),
        ),
      ),
      child: TextField(
        decoration: InputDecoration(
     label: Text(widget.label),
          border: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color(0xFFE5E7EB),
              width: 1,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          hintStyle: const TextStyle(
            color: Color(0xFF101828),
            fontSize: 14,
            fontFamily: fontName,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
