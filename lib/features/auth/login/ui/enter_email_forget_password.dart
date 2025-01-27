import 'package:champs/core/themes/app_text_styles.dart';
import 'package:champs/features/auth/login/ui/widget/button_widget.dart';
import 'package:champs/features/auth/login/ui/widget/text_field.dart';

import 'package:flutter/material.dart';

class EnterEmailForgetPassword extends StatelessWidget {
  const EnterEmailForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
                const SizedBox(height: 24),
                SizedBox(
                  width: 345,
                  child: Text(
                    'ادخل بريدك الالكتروني ',
                    textAlign: TextAlign.right,
                    style: AppTextStyles.font20Grey900BalooBhaijaan2w700,
                  ),
                ),
                const SizedBox(
                  height: 7,
                ),
                SizedBox(
                  width: 345,
                  child: Text(
                    'سيتم ارسال كود تاكيد الى بريدك الالكتروني ',
                    textAlign: TextAlign.right,
                    style: AppTextStyles.font20BrownBalooBhaijaan2w400,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const ReusableTextField(label: 'البريد الالكتروني'),
                const SizedBox(
                  height: 480,
                ),
                ReusableButton(
                  buttonText: 'ارسال',
                  onPressed: () {
                    Navigator.pushNamed(context, "/checkWithCodeLogin");
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
