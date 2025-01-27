import 'package:champs/core/constants/app_assets.dart';
import 'package:champs/core/helpers/extensions.dart';
import 'package:champs/core/routing/routes.dart';
import 'package:champs/core/themes/app_colors.dart';
import 'package:champs/core/themes/app_text_styles.dart';
import 'package:champs/core/widgets/profile_about_card.dart';
import 'package:champs/core/widgets/profile_section_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

class MenteCertificates extends StatelessWidget {
  const MenteCertificates({
    super.key,
  });
  Future<void> _launchUrl(Uri url) async {
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: ProfileSectionHeader(
            title: "الشهادات",
            onAddTap: () {
              context.pushNamed(Routes.addCertificateScreen);
            },
            onEditTap: () {
              context.pushNamed(Routes.editCertificateScreen);
            },
          ),
        ),
        const SizedBox(height: 15),
        Directionality(
          textDirection: TextDirection.ltr,
          child: ProfileAboutCard(
            content: Padding(
              padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Data-Driven Design: Quantitative Research for UX ',
                          style: AppTextStyles.font16BlackBalooBhaijaan2w700),
                      InkWell(
                        onTap: () {
                          _launchUrl(Uri.parse(
                              'https://www.interaction-design.org/members/sherif-amin/certificate/course/ec16d088-dbe9-421b-82a0-e96b11d2d5c5'));
                        },
                        child: Text(
                          'IxDF - The Interaction Design Foundation',
                          style: AppTextStyles.font10Grey600BalooBhaijaan2w500
                              .copyWith(
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text('Issued Des 2023',
                          style: AppTextStyles.font10Grey600BalooBhaijaan2w500),
                      Text('Credential ID 10485',
                          style: AppTextStyles.font10Grey600BalooBhaijaan2w500),
                      const SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                color: AppColors.gray400,
                                width: 1.0,
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                InkWell(
                                  onTap: () {
                                    _launchUrl(Uri.parse(
                                        'https://www.interaction-design.org/members/sherif-amin/certificate/course/ec16d088-dbe9-421b-82a0-e96b11d2d5c5'));
                                  },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('Show credential',
                                          style: AppTextStyles
                                              .font14BlackBalooBhaijaan2w500),
                                      const SizedBox(width: 5),
                                      SvgPicture.asset(
                                        AppSvgs.export,
                                        width: 15,
                                        height: 15,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
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
    );
  }
}
