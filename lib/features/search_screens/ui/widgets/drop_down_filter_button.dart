import 'package:flutter/material.dart';
import 'package:champs/core/widgets/custom_drop_button_list.dart';

class DropdownFiltersWidget extends StatelessWidget {
  const DropdownFiltersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomDropdownButton(
              height: 30,
              width: 100,
              text: 'البلد',
              items: ['مصر', 'السعودية', 'الإمارات', 'الأردن'],
            ),
            SizedBox(width: 4),
            CustomDropdownButton(
              height: 30,
              width: 100,
              text: 'اللغة',
              items: ['العربية', 'الإنجليزية', 'الفرنسية', 'الألمانية'],
            ),
            SizedBox(width: 4),
            CustomDropdownButton(
              height: 30,
              width: 100,
              text: 'التخصص',
              items: ['التصميم', 'تحليل البيانات', 'تطوير المواقع', 'صناعة المحتوى', 'كتابة المحتوى'],
            ),
            SizedBox(width: 4),
            CustomDropdownButton(
              height: 30,
              width: 100,
              text: 'المستوي',
              items: ['المبتدئ', 'المتوسط', 'المتقدم'],
            ),
          ],
        ),
      ),
    );
  }
}
