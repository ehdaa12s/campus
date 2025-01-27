import 'package:champs/core/themes/app_text_styles.dart';
import 'package:flutter/material.dart';

class RecentSearchesWidget extends StatelessWidget {
  const RecentSearchesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final recentSearches = [
      'Social Media',
      'Copy Writing',
      'iOS Developer',
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            SizedBox(
              width: 177,
              child: Text('عمليات البحث الاخيرة',
                  textAlign: TextAlign.right,
                  style: AppTextStyles.font20Grey900BalooBhaijaan2w500),
            ),
            const Spacer(),
            SizedBox(
              width: 39,
              child: Text(
                'مسح',
                textAlign: TextAlign.right,
                style: AppTextStyles.font15White100BalooBhaijaan2w400,
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        for (int i = 0; i < recentSearches.length; i++) ...[
          ListTile(
            leading: const Icon(Icons.access_time),
            title: Text(
              recentSearches[i],
              textAlign: TextAlign.right,
              style: AppTextStyles.font13White100BalooBhaijaan2w400,
            ),
          ),
          Divider(
            height: 0.2,
            color: i == recentSearches.length - 1
                ? const Color(0xFFA4A6AC)
                : const Color(0xFF98A1B2),
          ),
        ],
      ],
    );
  }
}
