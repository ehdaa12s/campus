import 'package:champs/core/widgets/build_dropdown_field.dart';
import 'package:champs/core/widgets/custom_text_button_for_boarding.dart';
import 'package:champs/features/rating_screen/ui/final_Rating_screen.dart';
import 'package:champs/features/rating_screen/ui/widgets/custom_text_field.dart';
import 'package:champs/features/rating_screen/ui/widgets/thanks_title_section.dart';
import 'package:flutter/material.dart';
import 'package:champs/core/themes/app_colors.dart';

Future showFeedbackDialog(BuildContext context) {
  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        backgroundColor: AppColors.white,
        content: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ThanksTitleSection(),
              const SizedBox(height: 16),
              buildDropdownField(
                label: "ما مدى فعالية الجلسة في حل مشكلتك",
                hint: "اختر اجابة",
                items: ['Option 1', 'Option 2', 'Option 3'],
                onChanged: (String? value) {},
              ),
              const SizedBox(height: 16),
              buildDropdownField(
                label: "ما مدى احتمالية ان توصي بهذه الخدمة ؟",
                hint: "1-3 سنين خبرة",
                items: ['Option 1', 'Option 2', 'Option 3'],
                onChanged: (String? value) {},
              ),
              const SizedBox(height: 16),
              CustomTextFieldForFeadback(
                label: "ما هو رأيك في الجلسة بشكل عام ؟",
                hint: "اكتب هنا",
              ),
              const SizedBox(height: 24),
              CustomTextButtonForBoarding(
                buttonText: "التالي",
                onPressed: () {
                  showFeedbackDialogForFinalRating(context);
                },
                width: 310,
                height: 54,
              ),
            ],
          ),
        ),
      );
    },
  );
}
