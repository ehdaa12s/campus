import 'package:champs/core/constants/app_assets.dart';
import 'package:champs/core/routing/routes.dart';
import 'package:champs/core/themes/app_colors.dart';
import 'package:champs/core/widgets/profile_about_card.dart';
import 'package:champs/core/widgets/profile_guides_card.dart';
import 'package:champs/core/widgets/profile_recommendation_card.dart';
import 'package:champs/core/widgets/profile_section_header.dart';
import 'package:champs/features/mente_screen/data/mente_profile_data.dart';
import 'package:champs/features/mente_screen/ui/widgets/mente_experience.dart';
import 'package:champs/features/mente_screen/ui/widgets/mente_profile_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:io';

class MenteProfileScreen extends StatefulWidget {
  const MenteProfileScreen({super.key});

  @override
  State<MenteProfileScreen> createState() => _MenteProfileScreenState();
}

class _MenteProfileScreenState extends State<MenteProfileScreen> {
  Future<void> _launchUrl(Uri url) async {
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

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
            const TabBar(
              indicatorColor: AppColors.primary,
              labelColor: AppColors.primary,
              labelStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
              unselectedLabelStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: AppColors.gray550),
              tabs: [
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
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          const SizedBox(height: 15),
                          const MenteExperience(),
                          const SizedBox(height: 10),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: ProfileSectionHeader(
                              title: "الشهادات",
                              onAddTap: () {
                                Navigator.pushNamed(
                                    context, Routes.addCertificateScreen);
                              },
                              onEditTap: () {
                                Navigator.pushNamed(
                                    context, Routes.editCertificateScreen);
                              },
                            ),
                          ),
                          const SizedBox(height: 15),
                          Directionality(
                            textDirection: TextDirection.ltr,
                            child: ProfileAboutCard(
                              content: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 1, horizontal: 8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(width: 10),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'Data-Driven Design: Quantitative Research for UX ',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black,
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () {
                                            _launchUrl(Uri.parse(
                                                'https://www.interaction-design.org/members/sherif-amin/certificate/course/ec16d088-dbe9-421b-82a0-e96b11d2d5c5'));
                                          },
                                          child: const Text(
                                            'IxDF - The Interaction Design Foundation',
                                            style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w500,
                                              color: AppColors.gray600,
                                              decoration:
                                                  TextDecoration.underline,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height: 8),
                                        const Text(
                                          'Issued Des 2023',
                                          style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500,
                                            color: AppColors.gray600,
                                          ),
                                        ),
                                        const Text(
                                          'Credential ID 10485',
                                          style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500,
                                            color: AppColors.gray600,
                                          ),
                                        ),
                                        Container(
                                          margin:
                                              const EdgeInsets.only(left: 150),
                                          width: 155,
                                          padding: const EdgeInsets.all(5),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            border: Border.all(
                                              color: AppColors.gray400,
                                              width: 1.0,
                                            ),
                                          ),
                                          child: InkWell(
                                            onTap: () {
                                              _launchUrl(Uri.parse(
                                                  'https://www.interaction-design.org/members/sherif-amin/certificate/course/ec16d088-dbe9-421b-82a0-e96b11d2d5c5'));
                                            },
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                const Text(
                                                  'Show credential',
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500,
                                                    color: Color(0xFF101828),
                                                  ),
                                                ),
                                                const SizedBox(width: 5),
                                                SvgPicture.asset(
                                                  AppSvgs.export,
                                                  width: 15,
                                                  height: 15,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
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
                                    color: AppColors.red,
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
