import 'package:champs/core/constants/app_assets.dart';
import 'package:champs/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MoreMenu extends StatelessWidget {
  const MoreMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Center(
          child: Text(
            'المزيد',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
      ),
      body: Container(
        height: 350,
        margin: const EdgeInsets.all(26),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              offset: const Offset(0, 2),
              blurRadius: 4,
            ),
          ],
        ),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            ListTile(
              title: const Text(
                'إنجازاتي',
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF667085),
                ),
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.pushNamed(context, Routes.achievementsScreen);
              },
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Divider(thickness: 1, height: 1),
            ),
            ListTile(
              trailing: const Icon(Icons.arrow_forward_ios),
              title: const Text(
                'اتصالاتي',
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF667085),
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, Routes.contactsScreen);
              },
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Divider(thickness: 1, height: 1),
            ),
            ListTile(
              trailing: const Icon(Icons.arrow_forward_ios),
              title: const Text(
                'انضم كموجه',
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF667085),
                ),
              ),
              onTap: () {
                Navigator.pushNamed(
                    context, Routes.joinAsGuideScreenInstructions);
              },
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Divider(thickness: 1, height: 1),
            ),
            ListTile(
              trailing: const Icon(Icons.arrow_forward_ios),
              title: const Text(
                'المفضلة',
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF667085),
                ),
              ),
              onTap: () {
                // Handle navigation
              },
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Divider(thickness: 1, height: 1),
            ),
            ListTile(
              trailing: const Icon(Icons.arrow_forward_ios),
              title: const Text(
                'الإعدادات',
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF667085),
                ),
              ),
              onTap: () {
                // Handle navigation
              },
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Divider(thickness: 1, height: 1),
            ),
            ListTile(
              leading: SvgPicture.asset(
                AppSvgs.logout,
                width: 28,
                height: 28,
                color: Colors.black,
              ),
              title: const Text(
                'تسجيل الخروج',
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF667085),
                ),
              ),
              onTap: () {
                // Handle logout
              },
            ),
          ],
        ),
      ),
    );
  }
}
