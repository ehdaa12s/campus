import 'package:champs/core/constants/app_assets.dart';
import 'package:champs/core/widgets/profile_guides_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ContactsScreen extends StatefulWidget {
  const ContactsScreen({super.key});

  @override
  State<ContactsScreen> createState() => _ContactsScreenState();
}

class _ContactsScreenState extends State<ContactsScreen> {
  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> profiles = [
      {
        'imagePath': 'assets/images/profile.png',
        'name': 'خديجة أشرف',
        'profession': 'Product Designer',
        'sessionsCount': '45',
        'ratingsCount': '24',
        'rating': '4.9',
        'experienceYears': '8',
      },
      {
        'imagePath': 'assets/images/profile.png',
        'name': 'خديجة أشرف',
        'profession': 'Product Designer',
        'sessionsCount': '45',
        'ratingsCount': '24',
        'rating': '4.9',
        'experienceYears': '8',
      },
      {
        'imagePath': 'assets/images/profile.png',
        'name': 'خديجة أشرف',
        'profession': 'Product Designer',
        'sessionsCount': '45',
        'ratingsCount': '24',
        'rating': '4.9',
        'experienceYears': '8',
      },
      {
        'imagePath': 'assets/images/profile.png',
        'name': 'خديجة أشرف',
        'profession': 'Product Designer',
        'sessionsCount': '45',
        'ratingsCount': '24',
        'rating': '4.9',
        'experienceYears': '8',
      },
    ];
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'اتصالاتي',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        body: ListView.builder(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 16),
          itemCount: profiles.length,
          itemBuilder: (context, index) {
            final profile = profiles[index];

            return Column(
              children: [
                ProfileGuidesCard(
                  imagePath: profile['imagePath'] ?? '',
                  name: profile['name'] ?? '',
                  profession: profile['profession'] ?? '',
                  sessionsCount:
                      int.tryParse(profile['sessionsCount'] ?? '0') ?? 0,
                  ratingsCount:
                      int.tryParse(profile['ratingsCount'] ?? '0') ?? 0,
                  rating: double.tryParse(profile['rating'] ?? '0') ?? 0.0,
                  experienceYears:
                      int.tryParse(profile['experienceYears'] ?? '0') ?? 0,
                  widget: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF2F4F7),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        const Text(
                          '(24) ',
                          style: TextStyle(
                            fontSize: 16,
                            color: const Color(0xFF667085),
                          ),
                        ),
                        SvgPicture.asset(
                          AppSvgs.calender,
                          height: 25,
                          width: 25,
                          color: const Color(0xFF101828),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 12),
              ],
            );
          },
        ));
  }
}
