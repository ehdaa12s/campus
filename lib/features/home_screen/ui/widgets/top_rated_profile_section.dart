import 'package:champs/core/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:champs/core/widgets/custom_profile_card.dart';

class TopRatedProfilesSection extends StatelessWidget {
  const TopRatedProfilesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ProfileCard(
            width: 255,
            name: 'معتصم شعبان',
            role: 'Product Designer',
            imageUrl: 'assets/images/profile.png',
            experience: '8 سنوات',
            rating: '4.9',
            numOfRating: '24',
            sessions: '45 جلسة',
            icon: Icon(Icons.star, color: AppColors.secondary600, size: 16), iconColor:AppColors.gray900,
          ),
          SizedBox(width: 8),
          ProfileCard(
            width: 255,
            name: 'إيمان عبدالله',
            role: 'Product Designer',
            imageUrl: 'assets/images/profile 2.png',
            experience: '8 سنوات',
            rating: '4.9',
            numOfRating: '24',
            sessions: '45 جلسة',
            icon:  Icon(Icons.star, color: AppColors.secondary600, size: 16), iconColor:AppColors.gray900,
          ),
        ],
      ),
    );
  }
}


