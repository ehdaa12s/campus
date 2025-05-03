import 'package:champs/core/constants/app_assets.dart';
import 'package:champs/core/themes/app_colors.dart';
import 'package:champs/core/themes/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileRecommendationCard extends StatelessWidget {
  final String name;
  final String content;
  final String imagePath;

  const ProfileRecommendationCard({
    super.key,
    required this.name,
    required this.content,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      margin: const EdgeInsets.only(top: 13),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: const Color(0xFF98A2B3),
          width: 1.0,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 23,
                backgroundImage: AssetImage(imagePath),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name,
                        style: AppTextStyles.font16Gray500BalooBhaijaan2),
                    const SizedBox(height: 3),
                    Row(
                      children: List.generate(
                        5,
                        (index) => SvgPicture.asset(
                          AppSvgs.star,
                          width: 13,
                          height: 13,
                          color: AppColors.secondary600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(content, style: AppTextStyles.font16Gray500BalooBhaijaan2),
        ],
      ),
    );
  }
}
