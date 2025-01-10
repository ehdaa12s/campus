import 'package:flutter/material.dart';

class CustomDropdownTextField extends StatefulWidget {
  final String label;
  final String hint; // Add a hint property
  final List<String> items; // Dropdown items

  const CustomDropdownTextField({
    super.key,
    required this.label,
    required this.hint,
    required this.items,
  });

  @override
  State<CustomDropdownTextField> createState() => _CustomDropdownTextFieldState();
}

class _CustomDropdownTextFieldState extends State<CustomDropdownTextField> {
  String? selectedValue; // Holds the selected value of the dropdown

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 345,
      height: 56,
      padding: const EdgeInsets.only(top: 4, left: 16, bottom: 4),
      decoration: const ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(4),
            topRight: Radius.circular(4),
          ),
        ),
      ),
      child: DropdownButtonFormField<String>(
        decoration: InputDecoration(
          labelText: widget.label,
          labelStyle: const TextStyle(
            color: Color(0xFF101828),
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 12,
          ),
        ),
        hint: Text(
          widget.hint,
          style: const TextStyle(
            color: Color(0xFFB0B0B0), // Hint color
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
        value: selectedValue, // Current selected value
        items: widget.items
            .map((item) => DropdownMenuItem<String>(
                  value: item,
                  child: Text(item),
                ))
            .toList(),
        onChanged: (value) {
          setState(() {
            selectedValue = value;
          });
        },
      ),
    );
  }
}
