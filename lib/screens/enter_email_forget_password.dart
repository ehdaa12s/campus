import 'package:champs/compenent/custom_text_button_for_boarding.dart';
import 'package:champs/compenent/custom_text_field.dart';
import 'package:champs/constant.dart';
import 'package:champs/screens/check_with_code_login.dart';

import 'package:flutter/material.dart';

class EnterEmailForgetPassword extends StatelessWidget {
  const EnterEmailForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(padding: const EdgeInsets.all(24),child:
          Column(
            children: [
              const SizedBox(
                height:24
              ),

              const SizedBox(
                width: 345,
                child: Text(
                  'ادخل بريدك الالكتروني ',
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
                height: 7,
              ),
              const SizedBox(
                width: 345,
                child: Text(
                  'سيتم ارسال كود تاكيد الى بريدك الالكتروني ',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Color(0xFF636262),
                    fontSize: 20,
                    fontFamily: fontName,
                    fontWeight: FontWeight.w400,
                    height: 1.20,
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const CustomTextField(label: 'البريد الإلكتروني'),
              const SizedBox(
                height: 480,
              ),
              CustomButton(
                  width: 345,
                  height: 44,
                  buttonText: 'ارسال',
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CheckWithCodeLogin()));
                  }),
            ],
          ),
          ),
        ],
      ),
    );
  }
}
