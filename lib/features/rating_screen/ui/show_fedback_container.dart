import 'package:champs/core/themes/app_colors.dart';
import 'package:champs/core/themes/app_text_styles.dart';
import 'package:champs/features/rating_screen/ui/widgets/feaback_options.dart';
import 'package:flutter/material.dart';

Future showFeedbackDialog(BuildContext context) {
  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        backgroundColor: AppColors.white,
        content: SizedBox(
          height: 161,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "اخبرنا عن مدى رضاك بخدمتنا !",
                textAlign: TextAlign.right,
                style: AppTextStyles.font20BlackBalooBhaijaan2w700,
              ),
              const SizedBox(height: 8),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FeedbackOption(
                    label: 'ممتاز',
                    imageUrl: 'assets/images/Excellent.png',
                  ),
                  FeedbackOption(
                    label: 'جيد جداً',
                    imageUrl: 'assets/images/veryGood.png',
                  ),
                  FeedbackOption(
                    label: 'جيد',
                    imageUrl: 'assets/images/good.png',
                  ),
                  FeedbackOption(
                    label: 'سيئ',
                    imageUrl: 'assets/images/bad.png',
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    },
  );
}
