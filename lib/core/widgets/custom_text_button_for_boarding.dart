import 'package:champs/constant.dart';
import 'package:flutter/material.dart';

import '../themes/app_colors.dart';

class CustomTextButtonForBoarding extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;
  final double width;
  final double height;

  const CustomTextButtonForBoarding({
    super.key,
    required this.buttonText,
    required this.onPressed,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: TextButton(
        onPressed: onPressed,
        style: const ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(
            AppColors.primary,
          ),
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(16)),
            ),
          ),
        ),
        child: Text(
          buttonText,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontFamily: fontName,
            fontWeight: FontWeight.w700,
            height: 1.50,
          ),
        ),
      ),
    );
  }
}
