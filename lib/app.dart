import 'package:champs/screens/edit_profile_screen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: appTheme(),
        
        navigatorKey: AppRouter.navigatorKey,
        onGenerateRoute: appRouter.generateRoute,
        initialRoute: Routes.onboardingScreen,
        routes: {
          Routes.editProfileScreen: (context) => const EditProfileScreen(),
        },
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
      ),
    );
  }
}
