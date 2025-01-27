import 'package:champs/core/themes/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomStatusScreen extends StatelessWidget {
  final String svgPath;
  final String title;
  final String subtitle;

  const CustomStatusScreen({
    super.key,
    required this.svgPath,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SvgPicture.asset(
          svgPath,
          width: 231,
          height: 200,
        ),
        const SizedBox(height: 30),
        Text(title,
            textAlign: TextAlign.center,
            style: AppTextStyles.font20blackBalooBhaijaan2Bold),
        const SizedBox(height: 15),
        Text(subtitle,
            textAlign: TextAlign.center,
            style: AppTextStyles.fornt14Gray550BalooBhaijaan2w400),
      ],
    );
  }
}
