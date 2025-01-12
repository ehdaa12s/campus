import 'package:champs/screens/add_certificate_screen.dart';
import 'package:champs/screens/add_experience_screen.dart';
import 'package:champs/screens/edit_certificate_screen.dart';
import 'package:champs/screens/edit_experience_screen.dart';
import 'package:champs/screens/edit_profile_screen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'core/routing/app_router.dart';
import 'core/routing/routes.dart';
import 'core/themes/app_theme.dart';

class CampusApp extends StatelessWidget {
  final AppRouter appRouter;

  const CampusApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 852),
      minTextAdapt: true,
      splitScreenMode: true,
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: appTheme(context),
        navigatorKey: AppRouter.navigatorKey,
        onGenerateRoute: appRouter.generateRoute,
        initialRoute: Routes.onboardingScreen,
        routes: {
          Routes.editProfileScreen: (context) => const EditProfileScreen(),
          Routes.addCertificateScreen: (context) =>
              const AddCertificateScreen(),
          Routes.addExperienceScreen: (context) => const AddExperienceScreen(),
          Routes.editCertificateScreen: (context) =>
              const EditCertificateScreen(),
          Routes.editExperienceScreen: (context) =>
              const EditExperienceScreen(),
        },
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
      ),
    );
  }
}
