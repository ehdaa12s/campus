import 'package:champs/core/widgets/custom%20_%20check_with_code_login.dart';
import 'package:champs/screens/check_with_code_login.dart';
import 'package:champs/screens/correct_login.dart';
import 'package:flutter/material.dart';

class SignUpWithCode extends StatelessWidget {
  const SignUpWithCode({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:CustomCheckCodeForLogin(title:
      'تأكيد رقم الهاتف'
          , description: 'من فضلك أدخل الكود المرسل إلى رقم هاتفك لتأكيده.',
          targetScreen: CorrectLogin())
    );
  }
}
