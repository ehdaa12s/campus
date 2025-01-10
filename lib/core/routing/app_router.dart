import 'package:champs/core/routing/routes.dart';
import 'package:champs/features/on_boarding/on_boarding_view.dart';
import 'package:champs/features/splash/presentation%20layer/splash_view.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();
  static BuildContext? currentContext = navigatorKey.currentContext;

  Route generateRoute(RouteSettings settings) {
    // final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.onboardingScreen:
        return MaterialPageRoute(builder: (_) => const SplashView());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
