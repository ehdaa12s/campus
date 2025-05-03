import 'package:champs/core/helpers/extensions.dart';
import 'package:champs/core/routing/routes.dart';
import 'package:champs/core/themes/app_colors.dart';
import 'package:champs/core/themes/app_text_styles.dart';
import 'package:champs/core/widgets/custom_button.dart';
import 'package:champs/core/widgets/profile_about_card.dart';
import 'package:champs/core/widgets/profile_recommendation_card.dart';
import 'package:champs/core/widgets/profile_section_header.dart';
import 'package:champs/features/mentor_screen/data/mentor_profile_data.dart';
import 'package:champs/features/mentor_screen/ui/widgets/mentor_certificates.dart';
import 'package:champs/features/mentor_screen/ui/widgets/mentor_experiences.dart';
import 'package:champs/features/mentor_screen/ui/widgets/mentor_profile_header.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'dart:io';

class MentorProfileScreen extends StatefulWidget {
  const MentorProfileScreen({super.key});

  @override
  State<MentorProfileScreen> createState() => _MenteProfileScreenState();
}

class _MenteProfileScreenState extends State<MentorProfileScreen> {
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
            TabBar(
              indicatorColor: AppColors.primary,
              labelColor: AppColors.primary,
              labelStyle: AppTextStyles.font16BlackBalooBhaijaan2w700,
              unselectedLabelStyle: AppTextStyles.font16Gray600BalooBhaijaan2w500,
              tabs: const [
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
                          ProfileAboutCard(
                            content: Text(
                                'هذا المحتوى قابل للتغيير هذا المحتوى قابل للتغير هذا المحتوى قابل للتغيير هذا المحتوى قابل للتغير هذا المحتوى قابل للتغيير هذا المحتوى قابل للتغير هذا المحتوى قابل للتغيير هذا المحتوى قابل للتغير هذا المحتوى قابل للتغيير هذا المحتوى قابل للتغير ',
                                style: AppTextStyles
                                    .font16BlackBalooBhaijaan2w400),
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
                          const MentorCertificates(),
                          CustomButton(
                            text: 'احجز الان',
                            onPressed: () {
                              context.pushNamed(Routes.sessionsScreen);
                            },
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
