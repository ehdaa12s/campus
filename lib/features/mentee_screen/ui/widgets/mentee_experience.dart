import 'package:champs/core/constants/app_assets.dart';
import 'package:champs/core/helpers/extensions.dart';
import 'package:champs/core/routing/routes.dart';
import 'package:champs/core/themes/app_text_styles.dart';
import 'package:champs/core/widgets/profile_about_card.dart';
import 'package:champs/core/widgets/profile_section_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MenteExperience extends StatelessWidget {
  const MenteExperience({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: ProfileSectionHeader(
            title: 'خبراتي',
            onAddTap: () {
              context.pushNamed(Routes.addExperienceScreen);
            },
            onEditTap: () {
              context.pushNamed(Routes.editExperienceScreen);
            },
          ),
        ),
        const SizedBox(height: 15),
        Directionality(
          textDirection: TextDirection.ltr,
          child: ProfileAboutCard(
            content: Padding(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        AppImages.experienceLogo,
                        width: 44,
                        height: 44,
                        fit: BoxFit.fill,
                      ),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Senior Product Designer',
                              style:
                                  AppTextStyles.font16BlackBalooBhaijaan2w700),
                          Text('Aaseya · Full-time',
                              style: AppTextStyles
                                  .font10Grey600BalooBhaijaan2w500),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Jul 2023 to Present · 1 yr 7 mos',
                          style: AppTextStyles.font10Grey600BalooBhaijaan2w500),
                      const SizedBox(height: 10),
                      Text('Riyadh, Saudi Arabia · On-site',
                          style: AppTextStyles.font10Grey600BalooBhaijaan2w500),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Directionality(
          textDirection: TextDirection.ltr,
          child: ProfileAboutCard(
            content: Padding(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Senior Product Designer',
                          style: AppTextStyles.font16BlackBalooBhaijaan2w700),
                      Text('Aaseya · Full-time',
                          style: AppTextStyles.font10Grey600BalooBhaijaan2w500),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Jul 2023 to Present · 1 yr 7 mos',
                          style: AppTextStyles.font10Grey600BalooBhaijaan2w500),
                      const SizedBox(height: 10),
                      Text('Riyadh, Saudi Arabia · On-site',
                          style: AppTextStyles.font10Grey600BalooBhaijaan2w500),
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
              Text('المزيد',
                  style: AppTextStyles.font14PrimaryBalooBhaijaan2w600),
              const SizedBox(width: 5),
              SvgPicture.asset(
                AppSvgs.arrowDown,
                width: 25,
                height: 25,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
