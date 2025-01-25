import 'package:champs/core/widgets/custom%20_%20check_with_code_login.dart';
import 'package:champs/features/auth/login/rest_password.dart';
import 'package:flutter/material.dart';

class CheckWithCodeLogin extends StatelessWidget {
  const CheckWithCodeLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          children: [
            Expanded(
              child: CustomCheckCodeForLogin(
                title: 'تأكيد رقم الهاتف',
                description: 'من فضلك أدخل الكود المرسل إلى رقم هاتفك لتأكيده.',
                targetScreen: RestPassword(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
