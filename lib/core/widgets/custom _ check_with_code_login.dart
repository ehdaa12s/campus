import 'package:champs/core/themes/app_text_styles.dart';
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

      body: SingleChildScrollView(
        child:
      Expanded(child: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          SizedBox(
            width: 345,
            child: Text(
              title,
              textAlign: TextAlign.right,
              style: AppTextStyles.font20Grey900BalooBhaijaan2w700,
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
              style: AppTextStyles.font20BrownBalooBhaijaan2w400,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const SimplifiedContainerRow(),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            width: 345,
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'لم يتم ارسال الكود ؟ ',
                    style: AppTextStyles.font16BrownBalooBhaijaan2w400,
                  ),
                  TextSpan(
                    text: 'ارسل الكود مرة اخرى',
                    style: AppTextStyles.font16BrownBalooBhaijaan2w600,
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
      ),
      ),
    );
  }
}
