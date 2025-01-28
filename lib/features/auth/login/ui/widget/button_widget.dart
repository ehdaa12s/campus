
import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_text_button_for_boarding.dart';


class ReusableButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;
  const ReusableButton({super.key, required this.buttonText, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return CustomTextButtonForBoarding(
      width: 345,
      height: 44,
      buttonText: buttonText,
      onPressed: onPressed,
    );
  }
}

