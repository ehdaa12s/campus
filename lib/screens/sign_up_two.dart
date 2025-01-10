import 'package:champs/core/widgets/custom_drop_button_list.dart';
import 'package:champs/core/widgets/custom_text_button_for_boarding.dart';
import 'package:champs/core/widgets/custom_text_field.dart';
import 'package:champs/core/widgets/custom_transform_widget.dart';
import 'package:champs/screens/sign_up_with_code.dart';
import 'package:flutter/material.dart';

class SignUpTwo extends StatefulWidget {
  const SignUpTwo({super.key});

  @override
  State<SignUpTwo> createState() => _SignUpTwoState();
}

class _SignUpTwoState extends State<SignUpTwo> {
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
            const  CustomTransformWidget(labelText: '3/2',
                progressColors: [
                  Color(0xFF00008D),
                  Color(0xFF00008D),
                  Color(0xFFECECEC),
                ],  targetScreen:SignUpWithCode()

            ),
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
              'البلد',
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
              'رابط حساب لينكدان',
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
            const CustomTextField(
                label: 'https://www.linkedin.com/in/your-profile'),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'التخصص',
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
            const CustomDropdownButton(
              width: 330,
              height: 48,
              text: 'التخصص',
              items: ['تخصص 1', 'تخصص 2', 'تخصص 3', 'تخصص 4', 'تخصص 5'],
            ),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              'عدد سنوات الخبرة',
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
            const CustomDropdownButton(
              width: 330,
              height: 48,
              text: 'عدد سنوات الخبرة',
              items: ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10'],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'نبذة عني',
              textAlign: TextAlign.right,
              style: TextStyle(
                color: Color(0xFF1F1F1F),
                fontSize: 16,
                fontFamily: 'Baloo Bhaijaan 2',
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              width: 345,
              height: 132,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 1, color: Color(0xFF98A1B2)),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Opacity(
                    opacity: 0.50,
                    child: SizedBox(
                      width: 75,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                        Text(
                         'نبذة عنك',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Color(0xFF98A1B2),
                            fontSize: 12,
                            fontFamily: 'Baloo Bhaijaan 2',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            CustomButton(
              buttonText: 'التالي',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SignUpWithCode(),
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
