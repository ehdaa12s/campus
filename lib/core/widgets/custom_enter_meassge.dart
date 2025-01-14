import 'package:flutter/material.dart';

class CustomContainerToEnterMessage extends StatelessWidget {
  final String hintText;
  final IconData leadingIcon;
  final IconData trailingIcon;
  final Widget? child;

  const CustomContainerToEnterMessage({
    super.key,
    required this.hintText,
    required this.leadingIcon,
    required this.trailingIcon,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 345,
      height: 40,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xFF98A1B2),
          width: 1,
        ),
        borderRadius: BorderRadius.circular(8),
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [

          Transform.rotate(
            angle: 3.14,
            child: Icon(
              leadingIcon,
              size: 24,
              color: const Color(0xFF98A1B2),
            ),
          ),
          const Spacer(),

          if (child != null) child!,

          if (child == null)
            Expanded(
              child: TextField(
                textAlign: TextAlign.right,
                decoration: InputDecoration(
                  hintText: hintText,

                  hintStyle: const TextStyle(
                    color: Color(0xFF98A1B2),
                    fontSize: 14,
                    fontFamily: 'Baloo Bhaijaan 2',
                    fontWeight: FontWeight.w500,
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
          const SizedBox(width: 8),

          Icon(
            trailingIcon,
            size: 24,
            color: const Color(0xFF98A1B2),
          ),
        ],
      ),
    );
  }
}
