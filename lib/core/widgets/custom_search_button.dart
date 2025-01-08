import 'package:champs/constant.dart';
import 'package:flutter/material.dart';
class CustomSearchButton extends StatelessWidget {
final double width;

  const CustomSearchButton({super.key,  required this.onTap ,  required this.width });
final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 40,
      padding: const EdgeInsets.symmetric(
          horizontal: 16, vertical: 10),
      decoration: BoxDecoration(
        border:
        Border.all(width: 1, color: const Color(0xFF98A1B2)),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(
            width: 20,
            height: 20,
            child: Icon(Icons
                .search),
          ),
          const SizedBox(
            width: 4,
          ),
          Expanded(
            child: TextField(onTap: onTap,
              textAlign: TextAlign.right,
              decoration: const InputDecoration(
                hintText:
                'ابحث عن افضل الموجهين في الوطن العربي ',
                hintStyle: TextStyle(
                  color: Color(0xFF98A1B2),
                  fontSize: 14,
                  fontFamily: fontName,
                  fontWeight: FontWeight.w500,
                  height: 1.50,
                ),
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}