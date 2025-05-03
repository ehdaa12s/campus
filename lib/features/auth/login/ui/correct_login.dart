import 'package:champs/core/helpers/extensions.dart';
import 'package:champs/core/routing/routes.dart';
import 'package:champs/core/themes/app_text_styles.dart';
import 'package:champs/core/utiles/size_config.dart';
import 'package:flutter/material.dart';

class CorrectLogin extends StatefulWidget {
  const CorrectLogin({super.key});

  @override
  State<CorrectLogin> createState() => _CorrectLoginState();
}

class _CorrectLoginState extends State<CorrectLogin>
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
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            SizedBox(
              child: Column(
                children: [
                  const Image(
                    image: AssetImage("assets/images/correct_login.png"),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 231,
                    child: Expanded(
                      child: Text(
                        'تم انشاء الحساب بنجاح ',
                        textAlign: TextAlign.right,
                        style: AppTextStyles.font24Grey900BalooBhaijaan2w700,
                      ),
                    ),
                  ),
                ],
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
      () => context.pushNamedAndRemoveUntil(Routes.homeScreen,
          predicate: (route) => false));
}
