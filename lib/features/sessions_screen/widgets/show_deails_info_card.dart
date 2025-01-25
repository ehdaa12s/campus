import 'package:champs/core/themes/app_colors.dart';
import 'package:champs/core/themes/app_text_styles.dart';
import 'package:flutter/material.dart';

class SessionInfoCard extends StatelessWidget {
  const SessionInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    final details = [
      {'title': 'اسم الجلسة', 'content': 'جلسة إرشادية', 'icon': null},
      {
        'title': 'الموعد',
        'content': 'الجمعة , 2 يناير 2025',
        'icon': Icons.calendar_today
      },
      {
        'title': 'الساعة',
        'content': '3:00PM - 3:30PM',
        'icon': Icons.access_time
      },
      {'title': 'الموقع', 'content': 'اون لاين عبر جوجل : ((', 'icon': null},
      {'title': 'ملاحظاتي', 'content': 'محتوى قابل للتغيير...', 'icon': null},
    ];

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      decoration: _cardDecoration(),
      child: Column(
        children: details.map((detail) => _buildDetailRow(detail)).toList(),
      ),
    );
  }

  Widget _buildDetailRow(Map<String, dynamic> detail) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            detail['title'] as String,
            style: AppTextStyles.font16Brown50BalooBhaijaan2w400,
          ),
          const SizedBox(height: 4),
          Row(
            children: [
              if (detail['icon'] != null)
                Icon(
                  detail['icon'] as IconData,
                  color: AppColors.black,
                  size: 20,
                ),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  detail['content'] as String,
                  style: AppTextStyles.font16BlackBalooBhaijaan2,
                  maxLines: 5,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  BoxDecoration _cardDecoration() {
    return BoxDecoration(
      color: const Color(0xFFFDFDFE),
      borderRadius: BorderRadius.circular(4),
      border: Border.all(color: const Color(0xFFCCCCD1), width: 1),
      boxShadow: const [
        BoxShadow(color: Color(0x0F000000), blurRadius: 8),
      ],
    );
  }
}
