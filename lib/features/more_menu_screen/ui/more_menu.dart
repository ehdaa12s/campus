import 'package:champs/core/constants/app_assets.dart';
import 'package:champs/core/helpers/extensions.dart';
import 'package:champs/core/routing/routes.dart';
import 'package:champs/core/themes/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MoreMenu extends StatelessWidget {
  const MoreMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title:
            Text('المزيد', style: AppTextStyles.font20blackBalooBhaijaan2Bold),
      ),
      body: Container(
        height: 350,
        margin: const EdgeInsets.all(26),
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
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            ListTile(
              title: Text('إنجازاتي',
                  textAlign: TextAlign.right,
                  style: AppTextStyles.font16Gray500BalooBhaijaan2),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                context.pushNamed(Routes.achievementsScreen);
              },
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Divider(thickness: 1, height: 1),
            ),
            ListTile(
              trailing: const Icon(Icons.arrow_forward_ios),
              title: Text('اتصالاتي',
                  textAlign: TextAlign.right,
                  style: AppTextStyles.font16Gray500BalooBhaijaan2),
              onTap: () {
                context.pushNamed(Routes.contactsScreen);
              },
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Divider(thickness: 1, height: 1),
            ),
            ListTile(
              trailing: const Icon(Icons.arrow_forward_ios),
              title: Text('انضم كموجه',
                  textAlign: TextAlign.right,
                  style: AppTextStyles.font16Gray500BalooBhaijaan2),
              onTap: () {
                context.pushNamed(Routes.joinAsGuideScreenInstructions);
              },
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Divider(thickness: 1, height: 1),
            ),
            ListTile(
              trailing: const Icon(Icons.arrow_forward_ios),
              title: Text('المفضلة',
                  textAlign: TextAlign.right,
                  style: AppTextStyles.font16Gray500BalooBhaijaan2),
              onTap: () {
                context.pushNamed(Routes.favouriteScreen);
              },
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Divider(thickness: 1, height: 1),
            ),
            ListTile(
              trailing: const Icon(Icons.arrow_forward_ios),
              title: Text('الإعدادات',
                  textAlign: TextAlign.right,
                  style: AppTextStyles.font16Gray500BalooBhaijaan2),
              onTap: () {
          //  context.pushNamed(Routes.settingScreen);
                context.pushNamed(Routes.statisticsScreen);
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
              title: Text('تسجيل الخروج',
                  textAlign: TextAlign.right,
                  style: AppTextStyles.font16Gray500BalooBhaijaan2),
              onTap: () {
                context.pushNamed(Routes.signInScreen);
              },
            ),
          ],
        ),
      ),
    );
  }
}
