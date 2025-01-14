import 'package:champs/constant.dart';
import 'package:champs/core/widgets/custom_profile_card.dart';
import 'package:flutter/material.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 24,
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back_ios)),
                  const SizedBox(
                    width: 60,
                  ),
                  const SizedBox(
                    width: 135,
                    child: Text(
                      'المفضلة',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF00001D),
                        fontSize: 24,
                        fontFamily: fontName,
                        fontWeight: FontWeight.w700,
                        height: 1.50,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              const ProfileCard(
                width: 345,
                name: 'معتصم شعبان',
                role: 'Product Designer',
                imageUrl: 'assets/images/profile.png',
                experience: '8 سنوات',
                rating: '4.9',
                numOfRating: '24',
                sessions: '45 جلسة',
                iconColor:Color(0xFFFF1D35),
                icon: Icon(Icons.star, color: Colors.amber, size: 16),
              ),
              const SizedBox(height: 8),
              const ProfileCard(
                width: 345,
                name: 'ايمان عبدالله',
                role: 'Product Designer',
                imageUrl: 'assets/images/profile 2.png',
                experience: '8 سنوات',
                rating: '4.9',
                numOfRating: '24',
                sessions: '45 جلسة',
                iconColor:Color(0xFFFF1D35),
                icon: Icon(Icons.star, color: Colors.amber, size: 16),
              ),
              const SizedBox(height: 8),
              const ProfileCard(
                width: 345,
                name: 'كريم سيد',
                role: 'Product Designer',
                imageUrl: 'assets/images/profile 3.png',
                experience: '8 سنوات',
                rating: '4.9',
                numOfRating: '24',
                sessions: '45 جلسة',
                iconColor:Color(0xFFFF1D35),
                icon: Icon(Icons.star, color: Colors.amber, size: 16),
              ),
              const SizedBox(height: 8),
              const ProfileCard(
                width: 345,
                name: 'معتصم شعبان',
                role: 'Product Designer',
                imageUrl: 'assets/images/profile.png',
                experience: '8 سنوات',
                rating: '4.9',
                numOfRating: '24',
                sessions: '45 جلسة',
                iconColor:Color(0xFFFF1D35),
                icon: Icon(Icons.star, color: Colors.amber, size: 16),
              ),
              const SizedBox(height: 8),
              ],
    ),
        ),


      ),
    );
  }
}
