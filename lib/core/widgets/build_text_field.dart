import 'package:champs/core/themes/app_text_styles.dart';
import 'package:flutter/material.dart';

Widget buildTextField({
  required String label,
  required String hint,
  double? height,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        label,
        style: AppTextStyles.font14BlackBalooBhaijaan2Bold,
      ),
      const SizedBox(height: 8),
      SizedBox(
        height: height,
        child: TextField(
          decoration: InputDecoration(
            hintStyle: const TextStyle(
              fontSize: 13,
            ),
            hintText: hint,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 12,
            ),
          ),
          maxLines: height != null
              ? (height ~/ 24)
              : 1, // Adjust max lines based on height
        ),
      ),
    ],
  );
}
