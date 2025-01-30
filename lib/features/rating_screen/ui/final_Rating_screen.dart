import 'package:champs/core/routing/routes.dart';
import 'package:champs/core/themes/app_colors.dart';
import 'package:champs/core/themes/app_text_styles.dart';
import 'package:champs/core/widgets/custom_text_button_for_boarding.dart';
import 'package:flutter/material.dart';

Future showFeedbackDialogForFinalRating(BuildContext context) {
  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        backgroundColor: AppColors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        content: SizedBox(
          width: 344,
          height: 287,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 16),
                    Container(
                      width: 48,
                      height: 48,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/Heart emoj.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      'شكراً على تقيميك',
                      textAlign: TextAlign.center,
                      style: AppTextStyles.font24BlackBalooBhaijaan2w700,
                    ),

                    const SizedBox(height: 8),
                    Expanded(child:
                    Text(
                      "شكراً على تقييمك! 🌟 ملاحظاتك تهمنا لتحسين تجربتك دائماً. ❤️",
                      textAlign: TextAlign.center,
                      style: AppTextStyles.font16GreyBalooBhaijaan2w500,
                    ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),

              CustomTextButtonForBoarding(buttonText:
              'التالي ', onPressed: () {
                Navigator.pushNamed(context, Routes.homeScreen);
              }, width: 310, height: 54),

        ],
          ),


        ),
      );
    },
  );
}
