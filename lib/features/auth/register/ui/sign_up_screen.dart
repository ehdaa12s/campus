import 'package:champs/core/widgets/custom_drop_button_list.dart';
import 'package:champs/core/widgets/custom_text_button_for_boarding.dart';
import 'package:champs/core/widgets/custom_text_field.dart';

import 'package:champs/core/widgets/simplified_colum_contianer.dart';
import 'package:champs/features/auth/register/ui/sign_up_two.dart';
import 'package:champs/features/auth/register/ui/widget/custom_transform_widget.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 24,
            ),
            const CustomTransformWidget(
                labelText: '3/1',
                progressColors: [
                  Color(0xFF00008D),
                  Color(0xFFECECEC),
                  Color(0xFFECECEC),
                ],
                targetScreen: SignUpTwo()),
            const SizedBox(
              width: 345,
              child: Text(
                'انشاء حساب جديد',
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Color(0xFF101828),
                  fontSize: 20,
                  fontFamily: 'Baloo Bhaijaan 2',
                  fontWeight: FontWeight.w700,
                  height: 1.50,
                ),
              ),
            ),
            const SizedBox(
              height: 12.5,
            ),
            const Text(
              'الإسم كاملا',
              textAlign: TextAlign.right,
              style: TextStyle(
                color: Color(0xFF101828),
                fontSize: 16,
                fontFamily: 'Baloo Bhaijaan 2',
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const CustomTextField(label: 'النص المقترح '),
            const SizedBox(
              height: 8,
            ),
            const Text(
              'الجنس',
              textAlign: TextAlign.right,
              style: TextStyle(
                color: Color(0xFF101828),
                fontSize: 16,
                fontFamily: 'Baloo Bhaijaan 2',
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const  CustomDropdownButton(
              width: 330,
              height: 48,
              text: 'عدد سنوات الخبرة',
              items: ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10'],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'البريد الإلكتروني',
              textAlign: TextAlign.right,
              style: TextStyle(
                color: Color(0xFF101828),
                fontSize: 16,
                fontFamily: 'Baloo Bhaijaan 2',
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const CustomTextField(label: 'البريد الإلكتروني'),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'رقم الهاتف ',
              textAlign: TextAlign.right,
              style: TextStyle(
                color: Color(0xFF101828),
                fontSize: 14,
                fontFamily: 'Baloo Bhaijaan 2',
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const CustomTextField(label: 'رقم الهاتف'),
            const Text(
              'كلمة المرور',
              textAlign: TextAlign.right,
              style: TextStyle(
                color: Color(0xFF101828),
                fontSize: 14,
                fontFamily: 'Baloo Bhaijaan 2',
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const CustomTextField(label: 'كلمة المرور'),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'تأكيد كلمة المرور',
              textAlign: TextAlign.right,
              style: TextStyle(
                color: Color(0xFF101828),
                fontSize: 16,
                fontFamily: 'Baloo Bhaijaan 2',
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const CustomTextField(label: 'تأكيد كلمة المرور'),
            const SizedBox(
              height: 10,
            ),
            Container(
              constraints: const BoxConstraints(maxWidth: 345, maxHeight: 150),
              child: const SimplifiedColumnContainer(),
            ),
            CustomTextButtonForBoarding(
              buttonText: 'التالي',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SignUpTwo(),
                  ),
                );
              },
              width: 345,
              height: 44,
            )
          ],
        ),
      ),
    ));
  }
}
