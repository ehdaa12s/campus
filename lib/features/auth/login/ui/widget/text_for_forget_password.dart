
import 'package:champs/core/themes/app_text_styles.dart';
import 'package:flutter/material.dart';
class ForgotPasswordText extends StatelessWidget {
  const ForgotPasswordText({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 345,
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, "/enterEmailForPasswordResetScreen");
        },
        child: Text(
          'هل نسيت كلمة المرور؟',
          textAlign: TextAlign.right,
          style: AppTextStyles.font12PrimaryBalooBhaijaan2w400,
        ),
      ),
    );
  }
}
