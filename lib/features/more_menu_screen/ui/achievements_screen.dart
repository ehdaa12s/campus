import 'package:champs/core/constants/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AchievementsScreen extends StatelessWidget {
  const AchievementsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'إنجازاتي',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
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
          itemCount: achievements.length,
          itemBuilder: (context, index) {
            final achievement = achievements[index];
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
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF667085),
                    ),
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

// Example data for achievements
const List<Map<String, String>> achievements = [
  {'title': 'تهانينا! لقد أكملت أول جلسة إرشاد مهني', 'progress': '1/1'},
  {'title': 'محتوى قابل للتغيير', 'progress': '1/1'},
  {'title': 'استمر في العمل الجاد', 'progress': '1/3'},
  {'title': 'تعلم دائماً ونموا بشكل مستمر', 'progress': '1/4'},
  {'title': 'كافح من أجل النجاح', 'progress': '1/5'},
  {'title': 'تجاوز التحديات بثقة', 'progress': '1/6'},
  {'title': 'ابق قوياً ومتفائلاً', 'progress': '1/7'},
  {'title': 'استمر في تطوير مهاراتك', 'progress': '1/8'},
  {'title': 'كن ملتزماً بأهدافك', 'progress': '1/9'},
  {'title': 'ابق قوياً ومتفائلاً', 'progress': '1/7'},
  {'title': 'استمر في تطوير مهاراتك', 'progress': '1/8'},
  {'title': 'كن ملتزماً بأهدافك', 'progress': '1/9'},
];
