import 'dart:io';

import 'package:champs/core/constants/app_assets.dart';
import 'package:champs/core/themes/app_colors.dart';
import 'package:champs/core/themes/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MentorProfileHeader extends StatelessWidget {
  const MentorProfileHeader({
    super.key,
    required File? image,
    required String profileName,
    required String profileJopTitle,
  }) : _image = image;

  final File? _image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 80),
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
                    // Add the action here
                  },
                  icon: SvgPicture.asset(
                    AppSvgs.arrowRight,
                    width: 28,
                    height: 28,
                  ),
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
                          color: AppColors.gray300, // Border color
                          width: 1.5, // Border width
                        ),
                      ),
                      child: CircleAvatar(
                        backgroundColor:
                            Colors.transparent, // Transparent background
                        radius: 80,
                        backgroundImage:
                            _image != null ? FileImage(_image) : null,
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

                // Share Icon on the right
                Column(
                  children: [
                    Container(
                      width: 42,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: AppColors.gray400,
                          width: 1.0,
                        ),
                      ),
                      child: IconButton(
                        onPressed: () {
                          // Add share functionality here
                        },
                        icon: SvgPicture.asset(
                          AppSvgs.heart,
                          width: 24,
                          height: 24,
                          color: AppColors.gray300,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Container(
                      width: 42,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: AppColors.gray400,
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
                          color: AppColors.gray300,
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
          Text('معتصم شعبان',
              style: AppTextStyles.font20blackBalooBhaijaan2w700),
          const SizedBox(
            height: 2,
          ),
          Text('UX UI Designer',
              style: AppTextStyles.font16Gray600BalooBhaijaan2w500),
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
                color: AppColors.secondary600,
              ),
              const SizedBox(width: 3),
              Text('24 / 4.9',
                  style: AppTextStyles.font14BlackBalooBhaijaan2w700),
            ],
          ),
        ],
      ),
    );
  }
}
