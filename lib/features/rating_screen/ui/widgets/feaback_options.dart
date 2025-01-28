import 'package:champs/core/routing/routes.dart';
import 'package:champs/core/themes/app_text_styles.dart';
import 'package:champs/features/rating_screen/ui/thank_you_screen.dart';
import 'package:flutter/material.dart';

class FeedbackOption extends StatelessWidget {
  final String label;
  final String imageUrl;

  const FeedbackOption({
    required this.label,
    required this.imageUrl,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            showFeedbackDialog(context);
          },
          child: Container(
            width: 36,
            height: 36,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imageUrl),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          textAlign: TextAlign.center,
          style: AppTextStyles.font16BlackBalooBhaijaan2w500,
        ),
      ],
    );
  }
}
