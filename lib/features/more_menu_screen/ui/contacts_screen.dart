import 'package:champs/core/constants/app_assets.dart';
import 'package:champs/core/themes/app_colors.dart';
import 'package:champs/core/themes/app_text_styles.dart';
import 'package:champs/core/widgets/profile_guides_card.dart';
import 'package:champs/features/more_menu_screen/data/contacts_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ContactsScreen extends StatefulWidget {
  const ContactsScreen({super.key});

  @override
  State<ContactsScreen> createState() => _ContactsScreenState();
}

class _ContactsScreenState extends State<ContactsScreen> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'اتصالاتي',
            style: AppTextStyles.font20blackBalooBhaijaan2Bold
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: const Icon(
            Icons.arrow_back_ios,
            color: AppColors.black,
          ),
        ),
        body: ListView.builder(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 16),
          itemCount: ContactsData().contacts.length,
          itemBuilder: (context, index) {
            final profile = ContactsData().contacts[index];

            return Column(
              children: [
                ProfileGuidesCard(
                  imagePath: profile['imagePath'] ?? '',
                  name: profile['name'] ?? '',
                  profession: profile['profession'] ?? '',
                  sessionsCount:
                      int.tryParse(profile['sessionsCount'] ?? '0') ?? 0,
                  ratingsCount:
                      int.tryParse(profile['ratingsCount'] ?? '0') ?? 0,
                  rating: double.tryParse(profile['rating'] ?? '0') ?? 0.0,
                  experienceYears:
                      int.tryParse(profile['experienceYears'] ?? '0') ?? 0,
                  widget: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF2F4F7),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        Text(
                          '(24) ',
                          style: AppTextStyles.font16Gray500BalooBhaijaan2
                          
                        ),
                        SvgPicture.asset(
                          AppSvgs.calender,
                          height: 25,
                          width: 25,
                          color: AppColors.gray900,
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 12),
              ],
            );
          },
        ));
  }
}
