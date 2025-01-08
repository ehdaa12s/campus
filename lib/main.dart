import 'package:champs/app.dart';
import 'package:device_preview/device_preview.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/di/dependency_injection.dart';
import 'core/helpers/app_localizations.dart';
import 'core/helpers/bloc_observer.dart';
import 'core/routing/app_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupGetIt();
  await EasyLocalization.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  Bloc.observer = MyBlocObserver();


  runApp(
    EasyLocalization(
      supportedLocales: AppLocalizations.supportedLocales,
      fallbackLocale: AppLocalizations.arabic,
      path: AppLocalizations.translationsPath,
      startLocale: AppLocalizations.arabic,
      saveLocale: true,
      child:  DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) =>CampusApp(
          appRouter: AppRouter(),
        ),
      ),),

  );
}
