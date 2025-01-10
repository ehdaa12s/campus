import 'package:champs/core/constants/app_assets.dart';
import 'package:champs/core/routing/routes.dart';
import 'package:champs/core/widgets/profile_about_card.dart';
import 'package:champs/core/widgets/profile_guides_card.dart';
import 'package:champs/core/widgets/profile_recommendation_card.dart';
import 'package:champs/core/widgets/profile_section_header.dart';
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
    final List<Map<String, String>> recommendations = [
      {
        'name': 'مها طارق',
        'content':
            'كونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنت',
        'imagePath': 'assets/images/profile.png',
      },
      {
        'name': 'أحمد علي',
        'content':
            'كونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنت',
        'imagePath': 'assets/images/profile.png',
      },
      {
        'name': 'سارة محمود',
        'content':
            'كونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنت',
        'imagePath': 'assets/images/profile.png',
      },
      {
        'name': 'علي عبد الله',
        'content':
            'كونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنتكونتنت',
        'imagePath': 'assets/images/profile.png',
      },
    ];

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

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Column(
          children: [
            // Profile Header
            Padding(
              padding: const EdgeInsets.only(top: 80),
              child: Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Back Icon on the left
                          IconButton(
                            onPressed: () {
                              // Add Action Here
                            },
                            icon: SvgPicture.asset(
                              AppSvgs.arrowRight,
                              width: 28,
                              height: 28,
                            ),
                          ),

                          // Share Icon on the right
                          Row(
                            children: [
                              Container(
                                width: 42,
                                height: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                    color: const Color(0xFF98A2B3),
                                    width: 1.0,
                                  ),
                                ),
                                child: IconButton(
                                  onPressed: () {
                                    Navigator.pushNamed(
                                      context,
                                      Routes.editProfileScreen,
                                    );
                                  },
                                  icon: SvgPicture.asset(
                                    AppSvgs.edit,
                                    width: 24,
                                    height: 24,
                                    color: const Color(0xFF9CA3AF),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 8),
                              Container(
                                width: 42,
                                height: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                    color: const Color(0xFF98A2B3),
                                    width: 1.0,
                                  ),
                                ),
                                child: IconButton(
                                  onPressed: () {
                                    // Add share functionality here
                                  },
                                  icon: SvgPicture.asset(
                                    AppSvgs.sharingNetwork,
                                    width: 24,
                                    height: 24,
                                    color: const Color(0xFF9CA3AF),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    // Profile Image in the center
                    Stack(
                      alignment: Alignment.bottomLeft, // Center the avatar
                      children: [
                        Container(
                          width: 160, // Double the radius (80 * 2)
                          height: 160,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: const Color(0xFF9CA3AF), // Border color
                              width: 1.5, // Border width
                            ),
                          ),
                          child: CircleAvatar(
                            backgroundColor:
                                Colors.transparent, // Transparent background
                            radius: 80,
                            backgroundImage:
                                _image != null ? FileImage(_image!) : null,
                            child: _image == null
                                ? const Icon(
                                    Icons.person_rounded,
                                    size: 100,
                                    color: Color(0xFF80808E),
                                  )
                                : null,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Text(
                      profileName,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF101828),
                      ),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Text(
                      profileJopTitle,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF475467),
                      ),
                    ),
                    const SizedBox(
                      height: 1,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          AppSvgs.star,
                          width: 20,
                          height: 20,
                          color: const Color(0xFFFFCF00),
                        ),
                        const SizedBox(width: 3),
                        const Text(
                          '24 / 4.9',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF101828),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 12),
            // TabBar
            const TabBar(
              indicatorColor: Color(0xFF00008D),
              labelColor: Color(0xFF00008D),
              labelStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
              unselectedLabelStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF666677)),
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
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: ProfileSectionHeader(
                              title: 'خبراتي',
                              onAddTap: () {
                                print("Add icon tapped");
                              },
                              onEditTap: () {
                                print("Edit icon tapped");
                              },
                            ),
                          ),
                          const SizedBox(height: 15),
                          Directionality(
                            textDirection: TextDirection.ltr,
                            child: ProfileAboutCard(
                              content: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 12, horizontal: 8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Image.asset(
                                          AppImages.experienceLogo,
                                          width: 44,
                                          height: 44,
                                          fit: BoxFit.fill,
                                        ),
                                        const SizedBox(width: 10),
                                        const Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Senior Product Designer',
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w700,
                                                color: Colors.black,
                                              ),
                                            ),
                                            Text(
                                              'Aaseya · Full-time',
                                              style: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w500,
                                                color: Color(0XFF475467),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 10),
                                    const Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Jul 2023 to Present · 1 yr 7 mos',
                                          style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0XFF475467),
                                          ),
                                        ),
                                        SizedBox(height: 10),
                                        Text(
                                          'Riyadh, Saudi Arabia · On-site',
                                          style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0XFF475467),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Directionality(
                            textDirection: TextDirection.ltr,
                            child: ProfileAboutCard(
                              content: Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 12, horizontal: 8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(width: 10),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Senior Product Designer',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Text(
                                          'Aaseya · Full-time',
                                          style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0XFF475467),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 10),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Jul 2023 to Present · 1 yr 7 mos',
                                          style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0XFF475467),
                                          ),
                                        ),
                                        SizedBox(height: 10),
                                        Text(
                                          'Riyadh, Saudi Arabia · On-site',
                                          style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0XFF475467),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          InkWell(
                            onTap: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  'المزيد',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF00008D),
                                  ),
                                ),
                                const SizedBox(width: 5),
                                SvgPicture.asset(
                                  AppSvgs.arrowDown,
                                  width: 25,
                                  height: 25,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 10),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: ProfileSectionHeader(
                              title: "الشهادات",
                              onAddTap: () {
                                print("Add icon tapped");
                              },
                              onEditTap: () {
                                print("Edit icon tapped");
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
                                              color: Color(0XFF475467),
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
                                            color: Color(0XFF475467),
                                          ),
                                        ),
                                        const Text(
                                          'Credential ID 10485',
                                          style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0XFF475467),
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
                                              color: const Color(0xFF98A2B3),
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
                  ListView.builder(
                    padding: const EdgeInsets.symmetric(
                        vertical: 30, horizontal: 16),
                    itemCount: recommendations
                        .length, // Dynamically set the item count
                    itemBuilder: (context, index) {
                      final profile =
                          recommendations[index]; // Get the profile data
                      return ProfileRecommendationCard(
                        name: profile['name']!,
                        content: profile['content']!,
                        imagePath: profile['imagePath']!,
                      );
                    },
                  ),
                  // Guides Section
                  ListView.builder(
                    padding: const EdgeInsets.symmetric(
                        vertical: 40, horizontal: 16),
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
                                int.tryParse(profile['sessionsCount'] ?? '0') ??
                                    0,
                            ratingsCount:
                                int.tryParse(profile['ratingsCount'] ?? '0') ??
                                    0,
                            rating: double.tryParse(profile['rating'] ?? '0') ??
                                0.0,
                            experienceYears: int.tryParse(
                                    profile['experienceYears'] ?? '0') ??
                                0,
                          ),
                          const SizedBox(height: 12),
                        ],
                      );
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
