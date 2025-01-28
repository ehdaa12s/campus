import 'package:champs/core/themes/app_colors.dart';
import 'package:champs/core/themes/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustomTextFieldForFeadback extends StatelessWidget {

  CustomTextFieldForFeadback({
    super.key,
    this.height,
    required this.label,
    required this.hint,
  });

  double? height;
  final String label;
  final String hint;

  @override

  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: AppTextStyles.font16BlackBalooBhaijaan2w600,
        ),
        const SizedBox(height: 8),
        Container(
          height: height,
          decoration: BoxDecoration(
            color:  AppColors.gray100,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: TextField(
              decoration: InputDecoration(
                hintText: hint,
                hintStyle: const TextStyle(
                  color: Color(0xFF9098A3),
                  fontSize: 14,
                ),
                border: InputBorder.none,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
