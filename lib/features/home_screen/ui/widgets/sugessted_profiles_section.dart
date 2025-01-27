import 'package:champs/core/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:champs/core/widgets/custom_profile_card.dart';

class SuggestedProfilesSection extends StatelessWidget {
  const SuggestedProfilesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Column(
      children:  [
        ProfileCard(
          width: double.infinity,
          name: 'معتصم شعبان',
          role: 'Product Designer',
          imageUrl: 'assets/images/profile.png',
          experience: '8 سنوات',
          rating: '4.9',
          numOfRating: '24',
          sessions: '45 جلسة',
          icon: Icon(Icons.star, color: AppColors.amber, size: 16), iconColor: AppColors.gray900,
        ),
        SizedBox(height: 8),
        ProfileCard(
          width: double.infinity,
          name: 'ايمان عبدالله',
          role: 'Product Designer',
          imageUrl: 'assets/images/profile 2.png',
          experience: '8 سنوات',
          rating: '4.9',
          numOfRating: '24',
          sessions: '45 جلسة',
          icon: Icon(Icons.star, color: AppColors.amber, size: 16), iconColor: AppColors.gray900,
        ),
        SizedBox(height: 8),
        ProfileCard(
          width: double.infinity,
          name: 'كريم سيد',
          role: 'Product Designer',
          imageUrl: 'assets/images/profile 3.png',
          experience: '8 سنوات',
          rating: '4.9',
          numOfRating: '24',
          sessions: '45 جلسة',
          icon: Icon(Icons.star, color: AppColors.amber, size: 16), iconColor: AppColors.gray900,
        ),
        SizedBox(height: 8),
      ],
    );
  }
}
