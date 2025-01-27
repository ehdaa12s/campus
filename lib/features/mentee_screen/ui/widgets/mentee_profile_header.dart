import 'dart:io';

import 'package:champs/core/constants/app_assets.dart';
import 'package:champs/core/helpers/extensions.dart';
import 'package:champs/core/routing/routes.dart';
import 'package:champs/core/themes/app_colors.dart';
import 'package:champs/core/themes/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MenteProfileHeader extends StatelessWidget {
  const MenteProfileHeader({
    super.key,
    required File? image,
    required this.profileName,
    required this.profileJopTitle,
  }) : _image = image;

  final File? _image;
  final String profileName;
  final String profileJopTitle;

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
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // Share Icon on the right
                Row(
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
                          context.pushNamed(Routes.editProfileScreen);
                        },
                        icon: SvgPicture.asset(
                          AppSvgs.edit,
                          width: 24,
                          height: 24,
                          color: AppColors.gray350,
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
                          color: AppColors.gray350,
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
                    color: AppColors.gray350, // Border color
                    width: 1.5, // Border width
                  ),
                ),
                child: CircleAvatar(
                  backgroundColor: Colors.transparent, // Transparent background
                  radius: 80,
                  backgroundImage: _image != null ? FileImage(_image) : null,
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
          Text(profileName, style: AppTextStyles.font20blackBalooBhaijaan2w700),
          const SizedBox(
            height: 2,
          ),
          Text(profileJopTitle,
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
                color: AppColors.amber,
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
