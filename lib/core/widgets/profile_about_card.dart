import 'package:flutter/material.dart';

class ProfileAboutCard extends StatelessWidget {
  final Widget content;
  final double width;
  final double height;

  const ProfileAboutCard({
    super.key,
    required this.content,
    this.width = 358,
    this.height = 180,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        width: width,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          border: Border.all(
            color: const Color(0xFF98A2B3),
            width: 1.0,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 15),
          child: content, // Dynamic content here
        ),
      ),
    );
  }
}
