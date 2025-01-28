import 'package:champs/core/constants/app_assets.dart';
import 'package:champs/core/themes/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget buildDropdownField({
  required String label,
  required String hint,
  required List<String> items,
  required ValueChanged<String?> onChanged,
  String? selectedValue,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        label,
        style: AppTextStyles.font14BlackBalooBhaijaan2Bold,
      ),
      const SizedBox(height: 8),
      DropdownButtonFormField<String>(
        value: selectedValue,
        isExpanded: true, // Ensures dropdown matches the field's width
        decoration: InputDecoration(
          hintText: hint,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        ),
        icon: SvgPicture.asset(
          AppSvgs.arrowDown,
          width: 28,
          height: 28,
          color: Colors.black,
        ),
        items: items
            .map(
              (item) => DropdownMenuItem<String>(
                value: item,
                child: Text(
                  item,
                  overflow:
                      TextOverflow.ellipsis, // Ensures text doesn't overflow
                ),
              ),
            )
            .toList(),
        onChanged: onChanged,
      ),
    ],
  );
}
