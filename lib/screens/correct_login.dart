import 'package:champs/constant.dart';
import 'package:champs/core/utiles/size_config.dart';
import 'package:champs/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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

    goToNextView();
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
            const SizedBox(
              child: Column(
                children: [
                  Image(
                    image: AssetImage("assets/images/correct_login.png"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 231,
                    child: Text(
                      'تم انشاء الحساب بنجاح ',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Color(0xFF101828),
                        fontSize: 24,
                        fontFamily: fontName,
                        fontWeight: FontWeight.w700,
                        height: 1.50,
                      ),
                    ),
                  )
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

void goToNextView() {
  Future.delayed(const Duration(seconds: 3), () {
    Get.to(() => const HomeScreenForNavagationBar(), transition: Transition.fade);
  });
}
