import 'package:champs/core/widgets/custom_text_button_for_boarding.dart';
import 'package:champs/core/widgets/custom_text_field.dart';
import 'package:champs/constant.dart';

import 'package:champs/screens/correct_login.dart';

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
          Padding(padding: const EdgeInsets.all(24),
          child:
          Column(
            children: [
              const SizedBox(
                height: 32,
              ),
              const SizedBox(
                width: 345,
                child: Text(
                  'تعيين كلمة مرور جديدة',
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
              const CustomTextField(label: 'كلمة المرور الجديدة'),
              const SizedBox(
                height:16 ,
              ),
              const CustomTextField(label: 'تأكيد كلمة المرور الجديدة'),
              const SizedBox(
                height: 440,
              ),
              CustomButton(
                  width: 345,
                  height: 44,
                  buttonText: 'تعيين كلمة المرور',
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CorrectLogin()));
                  }),
            ],
          ),
          ),
        ],
      ),
    );
  }
}
