import 'package:champs/core/themes/app_text_styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignUpText extends StatelessWidget {
  const SignUpText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
         TextSpan(
            text: 'ليس لديك  حساب ؟ ',
            style: AppTextStyles.font16blackBalooBhaijaan2w700,
          ),
          TextSpan(
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                Navigator.pushNamed(context, "/signUpScreen");
              },
            text: 'إنشاء حساب جديد',
            style: AppTextStyles.font16blackBalooBhaijaan2w700,
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
