import 'package:champs/core/constants/app_assets.dart';
import 'package:champs/core/themes/app_text_styles.dart';
import 'package:champs/features/more_menu_screen/data/achievements_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AchievementsScreen extends StatelessWidget {
  const AchievementsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'إنجازاتي',
          style: AppTextStyles.font20blackBalooBhaijaan2Bold
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
      ),
      body: Container(
        margin: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              offset: const Offset(0, 2),
              blurRadius: 6,
            ),
          ],
        ),
        child: ListView.separated(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16),
          itemCount: AchievementsData().achievements.length,
          itemBuilder: (context, index) {
            final achievement = AchievementsData().achievements[index];
            return ListTile(
              contentPadding:
                  EdgeInsets.zero, // Remove padding around the ListTile
              title: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 9.0, left: 6),
                    child: SizedBox(
                      width: 40,
                      height: 40,
                      child: SvgPicture.asset(
                        AppSvgs.medallions,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Text(
                    achievement['title']!,
                    textAlign: TextAlign.right,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF98A2B3),
                    ),
                  ),
                  Text(
                    '  ${achievement['progress']!}',
                    textAlign: TextAlign.right,
                    style: AppTextStyles.fornt14Gray500BalooBhaijaan2Bold 
                    
                  ),
                ],
              ),
            );
          },
          separatorBuilder: (context, index) => const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Divider(
              thickness: 1,
              height: 1,
            ),
          ),
        ),
      ),
    );
  }
}

