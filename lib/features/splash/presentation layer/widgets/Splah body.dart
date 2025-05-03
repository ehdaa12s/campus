// ignore: file_names
// ignore: file_names
// ignore: file_names
import 'package:champs/core/helpers/extensions.dart';
import 'package:champs/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:champs/core/utiles/size_config.dart';

class SplahBody extends StatefulWidget {
  const SplahBody({super.key});

  @override
  State<SplahBody> createState() => _SplahBodyState();
}

class _SplahBodyState extends State<SplahBody>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation<double>? fadingAnimation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 600));
    fadingAnimation =
        Tween<double>(begin: .2, end: 1).animate(animationController!);

    animationController?.repeat(reverse: true);

    goToNextView(context);
  }

  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/onboarding_background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            const SizedBox(
              width: double.infinity,
              child: Image(
                image: AssetImage("assets/images/splash.png"),
              ),
            ),
            FadeTransition(
              opacity: fadingAnimation!,
            ),
            const Spacer(),
            FadeTransition(
              opacity: fadingAnimation!,
            ),
          ],
        ));
  }
}

void goToNextView(BuildContext context) {
  Future.delayed(
      const Duration(seconds: 3),
      () => context.pushNamedAndRemoveUntil(Routes.onboardingScreen,
          predicate: (route) => false));
}
