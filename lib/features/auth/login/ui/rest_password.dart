import 'package:champs/core/themes/app_text_styles.dart';
import 'package:champs/features/auth/login/ui/widget/button_widget.dart';
import 'package:champs/features/auth/login/ui/widget/text_field.dart';
import 'package:flutter/material.dart';


class RestPassword extends StatefulWidget {
  const RestPassword({super.key});

  @override
  State<RestPassword> createState() => _RestPasswordState();
}

class _RestPasswordState extends State<RestPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
                const SizedBox(
                  height: 32,
                ),
                SizedBox(
                  width: 345,
                  child: Text(
                    'تعيين كلمة مرور جديدة',
                    textAlign: TextAlign.right,
                    style: AppTextStyles.font20Grey900BalooBhaijaan2w700,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                const ReusableTextField(label: 'كلمة المرور الجديدة'),
                const SizedBox(
                  height: 16,
                ),
                const ReusableTextField(label: 'تأكيد كلمة المرور الجديدة'),
                const SizedBox(
                  height: 440,
                ),
                ReusableButton(
                  buttonText: 'تعين كلمة المرور ',
                  onPressed: () {
                    Navigator.pushNamed(context, "/correctLogin");
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
