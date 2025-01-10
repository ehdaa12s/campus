import 'package:champs/core/widgets/custom_text_button_for_boarding.dart';
import 'package:champs/core/widgets/simple_continar_block.dart';
import 'package:flutter/material.dart';


 class CustomCheckCodeForLogin extends StatelessWidget {
  final String title;
  final String description;
  final Widget targetScreen;

  const CustomCheckCodeForLogin({
    super.key,
    required this.title,
    required this.description,
    required this.targetScreen,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Column(
            children: [
              const SizedBox(
                height: 32,
              ),
              SizedBox(
                width: 345,
                child: Text(
                  title,
                  textAlign: TextAlign.right,
                  style: const TextStyle(
                    color: Color(0xFF101828),
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    height: 1.50,
                  ),
                ),
              ),
              const SizedBox(
                height: 7,
              ),
              SizedBox(
                width: 342,
                child: Text(
                  description,
                  textAlign: TextAlign.right,
                  style: const TextStyle(
                    color: Color(0xFF636262),
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    height: 1.20,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const SimplifiedContainerRow(),
              const SizedBox(
                height: 30,
              ),
              const SizedBox(
                width: 345,
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'لم يتم ارسال الكود ؟ ',
                        style: TextStyle(
                          color: Color(0xFF636262),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          height: 1.50,
                        ),
                      ),
                      TextSpan(
                        text: 'ارسل الكود مرة اخرى',
                        style: TextStyle(
                          color: Color(0xFF636262),
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          height: 1.50,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 360,
              ),
              CustomButton(
                buttonText: 'إرسال',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => targetScreen),
                  );
                },
                width: 345,
                height: 44,
              ),
            ],

        ),

    );
  }
}
