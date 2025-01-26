import 'package:champs/core/constants/app_assets.dart';
import 'package:champs/core/themes/app_colors.dart';
import 'package:champs/core/widgets/custom_button.dart';
import 'package:champs/core/widgets/profile_about_card.dart';
import 'package:champs/core/widgets/profile_recommendation_card.dart';
import 'package:champs/core/widgets/profile_section_header.dart';
import 'package:champs/features/mentor_screen/data/mentor_profile_data.dart';
import 'package:champs/features/mentor_screen/ui/widgets/mentor_experiences.dart';
import 'package:champs/features/mentor_screen/ui/widgets/mentor_profile_header.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:video_player/video_player.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:io';

class MentorProfileScreen extends StatefulWidget {
  const MentorProfileScreen({super.key});

  @override
  State<MentorProfileScreen> createState() => _MenteProfileScreenState();
}

class _MenteProfileScreenState extends State<MentorProfileScreen> {
  // Open Link Function
  Future<void> _launchUrl(Uri url) async {
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  // Image Picker Function
  File? _image;

  // MediaPlayer Function
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    // Initialize the controller
    _controller =
        VideoPlayerController.asset('assets/video/Introductory_video.mp4')
          ..initialize().then((_) {
            setState(() {}); // Refresh the UI when initialization is complete
          })
          ..addListener(() {
            setState(() {
              // Detect if the video has finished playing
              if (_controller.value.position == _controller.value.duration) {
                // Video ended, reset to start
                _controller.seekTo(Duration.zero);
              }
            });
          });
  }

  @override
  void dispose() {
    super.dispose();
    // Dispose of the controller when it's no longer needed
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Column(
          children: [
            // Profile Header
            MentorProfileHeader(
              image: _image,
              profileName: 'معتصم شعبان',
              profileJopTitle: 'UI/UX Designer',
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
                  color: Color(0xFF666677)),
              tabs: [
                Tab(text: 'معلوماتي'),
                Tab(text: 'أراء عملائي'),
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
                          const ProfileAboutCard(
                            content: Text(
                              'هذا المحتوى قابل للتغيير هذا المحتوى قابل للتغير هذا المحتوى قابل للتغيير هذا المحتوى قابل للتغير هذا المحتوى قابل للتغيير هذا المحتوى قابل للتغير هذا المحتوى قابل للتغيير هذا المحتوى قابل للتغير هذا المحتوى قابل للتغيير هذا المحتوى قابل للتغير ',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          const SizedBox(height: 15),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: ProfileSectionHeader(
                              title: 'فيديو تعريفي',
                            ),
                          ),
                          const SizedBox(height: 15),
                          ProfileAboutCard(
                            content: Center(
                              child: SizedBox(
                                height: 200,
                                child: Stack(
                                  children: [
                                    // Video player
                                    VideoPlayer(_controller),

                                    // Center play/pause button with smooth transitions
                                    AnimatedOpacity(
                                      opacity: (!_controller.value.isPlaying ||
                                              _controller.value.position ==
                                                  _controller.value.duration)
                                          ? 1.0
                                          : 0.0,
                                      duration:
                                          const Duration(milliseconds: 300),
                                      child: Center(
                                        child: IconButton(
                                          icon: Icon(
                                            _controller.value.position ==
                                                    _controller.value.duration
                                                ? Icons.pause_circle
                                                : Icons.play_circle,
                                            color: Colors.white,
                                            size: 65.0,
                                          ),
                                          onPressed: () {
                                            setState(() {
                                              if (_controller.value.isPlaying) {
                                                _controller.pause();
                                              } else {
                                                _controller.play();
                                              }
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 15),
                          const MentorExperiences(),
                          const SizedBox(height: 10),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: ProfileSectionHeader(
                              title: 'الشهادات',
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
                                                    color: AppColors.black,
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
                          const SizedBox(height: 50),
                          CustomButton(
                            text: 'احجز الان',
                            onPressed: () {},
                          )
                        ],
                      ),
                    ),
                  ),

                  // Customer Opinion Section
                  CustomScrollView(
                    slivers: [
                      SliverList(
                        delegate: SliverChildBuilderDelegate(
                          childCount:
                              MentorProfileData().customerOpinion.length,
                          (context, index) {
                            final profile = MentorProfileData()
                                .customerOpinion[index]; // Get the profile data
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
