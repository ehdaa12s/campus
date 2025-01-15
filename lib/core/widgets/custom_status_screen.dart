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
        Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 15),
        Text(
          subtitle,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 14,
            color: Color(0xFF666677),
          ),
        ),
      ],
    );
  }
}
