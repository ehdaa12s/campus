import 'package:champs/core/constants/app_assets.dart';
import 'package:champs/core/themes/app_colors.dart';
import 'package:champs/core/themes/app_text_styles.dart';
import 'package:champs/core/widgets/profile_about_card.dart';
import 'package:champs/core/widgets/profile_guides_card.dart';
import 'package:champs/core/widgets/profile_recommendation_card.dart';
import 'package:champs/core/widgets/profile_section_header.dart';
import 'package:champs/features/mentee_screen/data/mente_profile_data.dart';
import 'package:champs/features/mentee_screen/ui/widgets/mentee_certificates.dart';
import 'package:champs/features/mentee_screen/ui/widgets/mentee_experience.dart';
import 'package:champs/features/mentee_screen/ui/widgets/mentee_profile_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:io';

class MenteProfileScreen extends StatefulWidget {
  const MenteProfileScreen({super.key});

  @override
  State<MenteProfileScreen> createState() => _MenteProfileScreenState();
}

class _MenteProfileScreenState extends State<MenteProfileScreen> {
  File? _image;
  String profileName = 'خديجة اشرف';
  String profileJopTitle = 'UX UI Designer';
  String profileDescription =
      'هذا المحتوى قابل للتغيير هذا المحتوى قابل للتغير هذا المحتوى قابل للتغيير هذا المحتوى قابل للتغير هذا المحتوى قابل للتغيير هذا المحتوى قابل للتغير هذا المحتوى قابل للتغيير هذا المحتوى قابل للتغير هذا المحتوى قابل للتغيير هذا المحتوى قابل للتغير ';

  Future<void> _loadProfileData() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      profileName = prefs.getString('profileName') ?? '';
      profileJopTitle = prefs.getString('profileJobTitle') ?? '';
      profileDescription = prefs.getString('profileDescription') ?? '';

      final imagePath = prefs.getString('profileImagePath');
      if (imagePath != null && File(imagePath).existsSync()) {
        _image = File(imagePath);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    _loadProfileData();

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Column(
          children: [
            // Profile Header
            MenteProfileHeader(
              image: _image,
              profileName: profileName,
              profileJopTitle: profileJopTitle,
            ),
            const SizedBox(height: 12),
            // TabBar
            TabBar(
              indicatorColor: AppColors.primary,
              labelColor: AppColors.primary,
              labelStyle: AppTextStyles.font16BlackBalooBhaijaan2w600,
              unselectedLabelStyle: AppTextStyles.font16Gray600BalooBhaijaan2w500
                  .copyWith(color: AppColors.gray500),
              tabs: const [
                Tab(text: 'نبذة عني'),
                Tab(text: 'توصيات عني'),
                Tab(text: 'موجهيني'),
              ],
            ),
            // TabBarView
            Expanded(
              child: TabBarView(
                children: [
                  // About Section
                  SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: ProfileSectionHeader(
                              title: 'نبذة عني',
                            ),
                          ),
                          const SizedBox(height: 15),
                          ProfileAboutCard(
                            content: Text(
                              profileDescription,
                              style:
                                  AppTextStyles.font16BlackBalooBhaijaan2w400,
                            ),
                          ),
                          const SizedBox(height: 15),
                          const MenteExperience(),
                          const SizedBox(height: 10),
                          const MenteCertificates(),
                        ],
                      ),
                    ),
                  ),

                  // Recommendations Section
                  CustomScrollView(
                    slivers: [
                      SliverList(
                        delegate: SliverChildBuilderDelegate(
                          childCount: MenteProfileData().recommendations.length,
                          (context, index) {
                            final profile = MenteProfileData()
                                .recommendations[index]; // Get the profile data
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: ProfileRecommendationCard(
                                name: profile['name']!,
                                content: profile['content']!,
                                imagePath: profile['imagePath']!,
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  // Guides Section
                  CustomScrollView(
                    slivers: [
                      SliverList(
                        delegate: SliverChildBuilderDelegate(
                            childCount: MenteProfileData().profiles.length,
                            (context, index) {
                          final profile = MenteProfileData().profiles[index];
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Column(
                              children: [
                                const SizedBox(height: 12),
                                ProfileGuidesCard(
                                  imagePath: profile['imagePath'] ?? '',
                                  name: profile['name'] ?? '',
                                  profession: profile['profession'] ?? '',
                                  sessionsCount: int.tryParse(
                                          profile['sessionsCount'] ?? '0') ??
                                      0,
                                  ratingsCount: int.tryParse(
                                          profile['ratingsCount'] ?? '0') ??
                                      0,
                                  rating: double.tryParse(
                                          profile['rating'] ?? '0') ??
                                      0.0,
                                  experienceYears: int.tryParse(
                                          profile['experienceYears'] ?? '0') ??
                                      0,
                                  widget: SvgPicture.asset(
                                    AppSvgs.filledHeart,
                                    width: 23,
                                    height: 23,
                                    color: AppColors.red200,
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
