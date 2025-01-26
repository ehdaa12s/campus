import 'package:champs/core/constants/app_assets.dart';
import 'package:champs/core/themes/app_colors.dart';
import 'package:champs/core/widgets/profile_about_card.dart';
import 'package:flutter/material.dart';

class MenteCertificates extends StatelessWidget {
  const MenteCertificates({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Directionality(
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
                          color: AppColors.gray600,
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
                      color: AppColors.gray600,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Riyadh, Saudi Arabia · On-site',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                      color: AppColors.gray600,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

