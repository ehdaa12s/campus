import 'package:flutter/material.dart';
import 'package:champs/core/widgets/custom_text_button_for_fields_selection.dart';

class CategoriesSection extends StatelessWidget {
  const CategoriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.all(4),
        child: Row(
          children: [
            CustomToggleButton(label: 'التصميم'),
            CustomToggleButton(label: 'تحليل البيانات'),
            CustomToggleButton(label: 'تطوير المواقع'),
            CustomToggleButton(label: 'صناعة المحتوى'),
            CustomToggleButton(label: 'كتابة المحتوى'),
          ],
        ),
      ),
    );
  }
}
