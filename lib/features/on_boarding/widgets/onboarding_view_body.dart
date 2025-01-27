import 'package:champs/core/widgets/custom_text_button_for_boarding.dart';
import 'package:champs/constant.dart';
import 'package:champs/features/on_boarding/widgets/boarding_two.dart';
import 'package:champs/features/on_boarding/widgets/custom_container_boarding_image.dart';
import 'package:champs/features/on_boarding/widgets/custom_sizedbox.dart';
import 'package:champs/features/auth/login/ui/sign_in.dart';
import 'package:flutter/material.dart';

class OnboardingViewBody extends StatefulWidget {
  const OnboardingViewBody({
    super.key,
  });

  @override
  State<OnboardingViewBody> createState() => _OnboardingViewBodyState();
}

class _OnboardingViewBodyState extends State<OnboardingViewBody> {
  final String skipText = 'تخطي';
  final String nextText = 'التالي';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/onboarding_background.png'),
              fit: BoxFit.cover,
            ),
          ),
          alignment: Alignment.topRight,
          child:Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              Container(
                alignment: Alignment.topRight,
                width: 344,
                height: 48,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder:
                        (context) => const SignIn()));
                  },
                  child: Text(
                    skipText,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Color(0xFF667085),
                      fontSize: 20,
                      fontFamily: fontName,
                      fontWeight: FontWeight.w700,
                      height: 1.50,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: 181,
                height: 43,
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(),
                child:
                    const Image(image: AssetImage('assets/images/splash.png')),
              ),
              const Spacer(),
              const CustomContainerBoardingImage(
                  image: 'assets/images/onboarding_one.png'),
              const SizedBox(
                height: 18,
              ),
              const CustomSizedbox(
                  text: 'مرحبًا بك في منصة Campus!',
                  fontSize: 20,
                  color: Color(0xFF101828),
                  fontWight: FontWeight.w700),
              const CustomSizedbox(
                text:
                    'سواء كنت تبحث عن الإرشاد المهني أو ترغب في مشاركة خبراتك مع الآخرين، منصة Campus هي المكان المثالي للانطلاق في رحلتك',
                fontSize: 16,
                color: Color(0xFF475467),
                fontWight: FontWeight.w500,
              ),
              const Spacer(),
              CustomButton(
                width: 345,
                height: 44,
                buttonText: nextText,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder:
                      (context) => const BoardingTwo()));
                },
              ),

            ],
          ),
        ),
      ),
    );
  }
}
