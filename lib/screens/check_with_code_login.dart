import 'package:champs/compenent/custom_text_button_for_boarding.dart';
import 'package:champs/compenent/simple_continar_block.dart';
import 'package:champs/constant.dart';
import 'package:champs/screens/rest_password.dart';
import 'package:flutter/material.dart';

class CheckWithCodeLogin extends StatelessWidget {
  const CheckWithCodeLogin({super.key});

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
                  'تأكيد رقم الهاتف المحمول',
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
                width: 342,
                child: Text(
                  'من فضلك أدخل الكود المرسل إلى رقم هاتفك لتأكيده.',
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
                          fontFamily: fontName,
                          fontWeight: FontWeight.w400,
                          height: 1.50,
                        ),
                      ),
                      TextSpan(
                        text: 'ارسل الكود مرة اخرى',
                        style: TextStyle(
                          color: Color(0xFF636262),
                          fontSize: 16,
                          fontFamily: fontName,
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
                height: 400,
              ),
              CustomButton(buttonText: 'تأكيد', onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) =>
                const
                    RestPassword()));
              }, width:345, height: 44)
            ],
          ),
        ),
      ),
    );
  }
}
