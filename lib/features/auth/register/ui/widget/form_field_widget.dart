import 'package:flutter/material.dart';
import 'package:champs/core/widgets/custom_drop_button_list.dart';
import 'package:champs/core/widgets/custom_text_field.dart';

class FormFieldWidget extends StatelessWidget {
  final String label;
  final bool isDropdown;
  final List<String>? dropdownItems;

  const FormFieldWidget({
    super.key,
    required this.label,
    required this.isDropdown,
    this.dropdownItems,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          textAlign: TextAlign.right,
          style: const TextStyle(
            color: Color(0xFF101828),
            fontSize: 16,
            fontFamily: 'Baloo Bhaijaan 2',
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 8),
        isDropdown
            ? CustomDropdownButton(
                width: 330,
                height: 48,
                text: label,
                items: dropdownItems ?? [],
              )
            : CustomTextField(label: label),
      ],
    );
  }
}
