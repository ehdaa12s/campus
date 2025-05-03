import 'package:champs/core/routing/routes.dart';
import 'package:champs/core/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:champs/core/widgets/custom_profile_card.dart';

class ProfileCardListWidget extends StatelessWidget {
  const ProfileCardListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final profiles = [
      {
        'name': 'معتصم شعبان',
        'role': 'Product Designer',
        'imageUrl': 'assets/images/profile.png',
        'experience': '8 سنوات',
        'rating': '4.9',
        'numOfRating': '24',
        'sessions': '45 جلسة',
      },
      {
        'name': 'ايمان عبدالله',
        'role': 'Product Designer',
        'imageUrl': 'assets/images/profile 2.png',
        'experience': '8 سنوات',
        'rating': '4.9',
        'numOfRating': '24',
        'sessions': '45 جلسة',
      },
      {
        'name': 'كريم سيد',
        'role': 'Product Designer',
        'imageUrl': 'assets/images/profile 3.png',
        'experience': '8 سنوات',
        'rating': '4.9',
        'numOfRating': '24',
        'sessions': '45 جلسة',
      },
    ];

    return
      Column(
      children: profiles
          .map((profile) => Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child:
       GestureDetector(
         onTap: (){
           Navigator.pushNamed(context, Routes.mentorProfileScreen);
         },
         child:  ProfileCard(
           width: 345,
           name: profile['name']!,
           role: profile['role']!,
           imageUrl: profile['imageUrl']!,
           experience: profile['experience']!,
           rating: profile['rating']!,
           numOfRating: profile['numOfRating']!,
           sessions: profile['sessions']!,
           iconColor: Colors.grey,
           icon: const Icon(Icons.star, color: AppColors.secondary600, size: 16),
         ),

       )
      ))
          .toList(),
    );
  }
}
