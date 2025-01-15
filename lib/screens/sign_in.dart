import 'package:champs/core/widgets/custom_text_button_for_boarding.dart';
import 'package:champs/core/widgets/custom_text_field.dart';
import 'package:champs/constant.dart';
import 'package:champs/screens/enter_email_forget_password.dart';
import 'package:champs/screens/home_screen.dart';
import 'package:champs/screens/sign_up_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../core/widgets/simplified_colum_contianer.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              const SizedBox(
                height: 32,
              ),
              const SizedBox(
                width: 345,
                child: Text(
                  'تسجيل الدخول',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Color(0xFF101828),
                    fontSize: 20,
                    fontFamily: fontName,
                    fontWeight: FontWeight.w700,
                    height: 1.50,
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              const CustomTextField(label: 'البريد الإلكتروني'),
              const SizedBox(
                height: 16,
              ),
              const CustomTextField(label: 'كلمة المرور'),
              const SizedBox(
                height: 8,
              ),
              SizedBox(
                width: 345,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const EnterEmailForgetPassword()));
                  },
                  child: const Text(
                    'هل نسيت كلمة المرور؟',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Color(0xFF00008D),
                      fontSize: 12,
                      fontFamily: fontName,
                      fontWeight: FontWeight.w400,
                      height: 1.50,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Container(
                constraints:
                    const BoxConstraints(maxWidth: 345, maxHeight: 150),
                child: const SimplifiedColumnContainer(),
              ),
              const SizedBox(height: 200),
              CustomButton(
                  width: 345,
                  height: 44,
                  buttonText: 'تسجيل الدخول',
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const HomeScreenForNavagationBar()));
                  }),
              const SizedBox(height: 8),
              Text.rich(
                TextSpan(
                  children: [
                    const TextSpan(
                      text: 'ليس لديك  حساب ؟ ',
                      style: TextStyle(
                        color: Color(0xFF090909),
                        fontSize: 16,
                        fontFamily: fontName,
                        fontWeight: FontWeight.w400,
                        height: 1.50,
                      ),
                    ),
                    TextSpan(
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignUpScreen()));
                        },
                      text: 'إنشاء حساب جديد',
                      style: const TextStyle(
                        color: Color(0xFF090909),
                        fontSize: 16,
                        fontFamily: fontName,
                        fontWeight: FontWeight.w700,
                        height: 1.50,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
