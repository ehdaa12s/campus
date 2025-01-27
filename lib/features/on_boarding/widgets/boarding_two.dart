import 'package:champs/core/widgets/custom_text_button_for_boarding.dart';
import 'package:champs/constant.dart';
import 'package:champs/features/on_boarding/widgets/boaring_three.dart';
import 'package:champs/features/auth/login/ui/sign_in.dart';
import 'package:flutter/material.dart';

import 'package:champs/features/on_boarding/widgets/custom_container_boarding_image.dart';
import 'package:champs/features/on_boarding/widgets/custom_sizedbox.dart';

class BoardingTwo extends StatefulWidget {
  const BoardingTwo({
    super.key,
  });

  @override
  State<BoardingTwo> createState() => _BoardingTwoState();
}

class _BoardingTwoState extends State<BoardingTwo> {
  final String skipText = 'تخطي';
  final String nextText = 'التالي';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/onboarding_background.png'),
              fit: BoxFit.cover,
            ),
          ),
          alignment: Alignment.topRight,
          child: Padding(
            padding: const EdgeInsets.all(50),
          child:
          Column(
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignIn()));
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
                  image: 'assets/images/onbording_two.png'),
              const SizedBox(
                height: 18,
              ),
              const CustomSizedbox(
                  text: 'كيف تعمل المنصة',
                  fontSize: 20,
                  color: Color(0xFF101828),
                  fontWight: FontWeight.w700),
              const CustomSizedbox(
                text:
                    'سهولة في الاستخدام لتحقيق أهدافك , شارك خبراتك وألهم الآخرين ,واحصل على الإرشاد والدعم المهني',
                fontSize: 16,
                color: Color(0xFF475467),
                fontWight: FontWeight.w500,
              ),
              const Spacer(),
              CustomButton(
                  width: 345,
                  height: 44,
                  buttonText: 'التالي',
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const BoaringThree()));
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
