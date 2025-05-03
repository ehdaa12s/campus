import 'package:champs/core/themes/app_colors.dart';
import 'package:champs/core/themes/app_text_styles.dart';
import 'package:flutter/material.dart';

class ThanksTitleSection extends StatelessWidget {
  const ThanksTitleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: double.infinity,
    child:
      Column(
      children: [
       Row(
      children: [
        IconButton(onPressed: (){
          Navigator.pop(context);

        }, icon:const Icon(Icons.arrow_back_ios, color:AppColors.gray800, size: 24)),
        Expanded(child: Text(
          "شكراً على تقييمك ",
          textAlign: TextAlign.center,
          style: AppTextStyles.font24BlackBalooBhaijaan2w700,
        ),
        ),
        ],),
        const SizedBox(height: 13),
        Text(
          "نرجوا منك وصف تجربتك لمساعد غيرك.",
          textAlign: TextAlign.center,
          style: AppTextStyles.font16Gray700BalooBhaijann2w500,
        ),
      ],
      ),
    );
  }
}
