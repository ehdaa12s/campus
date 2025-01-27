import 'package:champs/core/themes/app_text_styles.dart';
import 'package:flutter/material.dart';
class ReusableHeader extends StatelessWidget {
  final String title;
  const ReusableHeader({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 345,
      child: Text(
        title,
        textAlign: TextAlign.right,
        style: AppTextStyles.font20Grey900BalooBhaijaan2w700
      ),
    );
  }
}
