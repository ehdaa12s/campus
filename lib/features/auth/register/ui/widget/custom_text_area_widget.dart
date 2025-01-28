import 'package:flutter/material.dart';

class CustomTextAreaWidget extends StatelessWidget {
  final String label;

  const CustomTextAreaWidget({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          textAlign: TextAlign.right,
          style: const TextStyle(
            color: Color(0xFF1F1F1F),
            fontSize: 16,
            fontFamily: 'Baloo Bhaijaan 2',
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 8),
        Container(
          width: 345,
          height: 132,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 1, color: Color(0xFF98A1B2)),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: const Align(
            alignment: Alignment.topRight,
            child: Opacity(
              opacity: 0.50,
              child: Text(
                'نبذة عنك',
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Color(0xFF98A1B2),
                  fontSize: 12,
                  fontFamily: 'Baloo Bhaijaan 2',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
