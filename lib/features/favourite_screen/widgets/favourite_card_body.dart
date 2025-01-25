import 'package:champs/core/themes/app_colors.dart';
import 'package:champs/core/widgets/custom_profile_card.dart';
import 'package:flutter/material.dart';

class FavouriteCardBody extends StatelessWidget {
  const FavouriteCardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ProfileCard(
          width: 345,
          name: 'معتصم شعبان',
          role: 'Product Designer',
          imageUrl: 'assets/images/profile.png',
          experience: '8 سنوات',
          rating: '4.9',
          numOfRating: '24',
          sessions: '45 جلسة',
          iconColor: Color(0xFFFF1D35),
          icon: Icon(Icons.star, color: AppColors.amber, size: 16),
        ),
        SizedBox(height: 8),
        ProfileCard(
          width: 345,
          name: 'ايمان عبدالله',
          role: 'Product Designer',
          imageUrl: 'assets/images/profile 2.png',
          experience: '8 سنوات',
          rating: '4.9',
          numOfRating: '24',
          sessions: '45 جلسة',
          iconColor: Color(0xFFFF1D35),
          icon: Icon(Icons.star, color: AppColors.amber, size: 16),
        ),
        SizedBox(height: 8),
        ProfileCard(
          width: 345,
          name: 'كريم سيد',
          role: 'Product Designer',
          imageUrl: 'assets/images/profile 3.png',
          experience: '8 سنوات',
          rating: '4.9',
          numOfRating: '24',
          sessions: '45 جلسة',
          iconColor: Color(0xFFFF1D35),
          icon: Icon(Icons.star, color: AppColors.amber, size: 16),
        ),
        SizedBox(height: 8),
        ProfileCard(
          width: 345,
          name: 'معتصم شعبان',
          role: 'Product Designer',
          imageUrl: 'assets/images/profile.png',
          experience: '8 سنوات',
          rating: '4.9',
          numOfRating: '24',
          sessions: '45 جلسة',
          iconColor: Color(0xFFFF1D35),
          icon: Icon(Icons.star, color: AppColors.amber, size: 16),
        ),
        SizedBox(height: 8),
      ],
    );
  }
}
