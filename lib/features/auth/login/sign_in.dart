import 'package:champs/features/auth/login/widget/sign_up_text.dart';
import 'package:champs/features/auth/login/widget/text_field.dart';
import 'package:flutter/material.dart';

import '../../../core/widgets/simplified_colum_contianer.dart';
import 'widget/button_widget.dart';
import 'widget/header_widget.dart';
import 'widget/text_for_forget_password.dart';
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
              const SizedBox(height: 32),
              const ReusableHeader(title: 'تسجيل الدخول'),
              const SizedBox(height: 12),
              const ReusableTextField(label: 'البريد الإلكتروني'),
              const SizedBox(height: 16),
              const ReusableTextField(label: 'كلمة المرور'),
              const SizedBox(height: 8),
              const ForgotPasswordText(),
              const SizedBox(height: 16),
              Container(
                constraints: const BoxConstraints(maxWidth: 345, maxHeight: 150),
                child: const SimplifiedColumnContainer(),
              ),
              const SizedBox(height: 200),
              ReusableButton(
                buttonText: 'تسجيل الدخول',
                onPressed: () {
                  Navigator.pushNamed(context, "/homeScreenforNavagatorBar");
                },
              ),
              const SizedBox(height: 8),
              const  SignUpText(),
            ],
          ),
        ),
      ),
    );
  }
}
