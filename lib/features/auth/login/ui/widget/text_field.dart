import 'package:champs/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
class ReusableTextField extends StatelessWidget {
  final String label;
  const ReusableTextField({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return CustomTextField(label: label);
  }
}
