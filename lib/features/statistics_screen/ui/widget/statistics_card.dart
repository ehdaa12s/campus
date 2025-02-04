import 'package:champs/core/constants/app_assets.dart';
import 'package:champs/core/themes/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CompletedSessionsCard extends StatelessWidget {
  final double percentage;
  final int completedSessions;

  const CompletedSessionsCard({
    super.key,
    required this.percentage,
    required this.completedSessions,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: -5,
            blurRadius: 5,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        elevation: 1,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'متوسط وقت الجلسة',
                    style: AppTextStyles.font12Grey500BalooBhaijaan2w500,
                  ),
                  SizedBox(
                    width: 20,
                    height: 20,
                    child: SvgPicture.asset(
                      AppSvgs.trendUp,
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '$completedSessions جلسة',
                    style: AppTextStyles.font12BlackBalooBhaijaan2w700,
                  ),
                  Text(
                    '${percentage.toStringAsFixed(0)}%',
                    style: AppTextStyles.font12BlackBalooBhaijaan2w700,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
