import 'package:champs/core/widgets/custom%20_%20check_with_code_login.dart';
import 'package:champs/core/widgets/custom_transform_widget.dart';
import 'package:champs/features/auth/login/ui/correct_login.dart';
import 'package:flutter/material.dart';

class SignUpWithCode extends StatelessWidget {
  const SignUpWithCode({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:Padding(padding:
       EdgeInsets.all(24),
      child:Column(
        children: [
         SizedBox(
            height: 24,
          ),
          CustomTransformWidget(labelText: '3/3',
              progressColors: [
                Color(0xFF00008D),
                Color(0xFF00008D),
                Color(0xFF00008D),
              ],  targetScreen:CorrectLogin()

          ),
          Expanded(child:
              SizedBox(
                height: 563,
                  width: double.infinity,
                  child:

          CustomCheckCodeForLogin(
              title:
              'تأكيد رقم الهاتف'
              , description: 'من فضلك أدخل الكود المرسل إلى رقم هاتفك لتأكيده.',
              targetScreen: CorrectLogin())
          ),
          ),
],
      ),
    ),


    );
  }
}
