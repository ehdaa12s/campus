import 'package:champs/core/helpers/extensions.dart';
import 'package:champs/core/routing/routes.dart';
import 'package:champs/core/themes/app_text_styles.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text('الاعدادات ',
            style: AppTextStyles.font20blackBalooBhaijaan2Bold),
      ),
      body: Container(
        height: 180,
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
        child: Column(
          children: [
            ListTile(
              title: Text('المعلومات الشخصية',
                  textAlign: TextAlign.right,
                  style: AppTextStyles.font16Gray500BalooBhaijaan2),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                context.pushNamed(Routes.personalScreen);
              },
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Divider(thickness: 1, height: 1),
            ),

            ListTile(
              trailing: const Icon(Icons.arrow_forward_ios),
              title: Text('الخصوصية',
                  textAlign: TextAlign.right,
                  style: AppTextStyles.font16Gray500BalooBhaijaan2),
              onTap: () {
                context.pushNamed(Routes.secuirtyScreen);
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
          ],
        ),
      ),
    );
  }
}
