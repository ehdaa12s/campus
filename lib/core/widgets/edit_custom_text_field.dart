import 'package:champs/core/themes/app_colors.dart';
import 'package:flutter/material.dart';

class EditCustomTextField extends StatefulWidget {
  final String labelText;
  final double height;
  final TextEditingController controller;

  const EditCustomTextField({
    super.key,
    required this.labelText,
    required this.height,
    required this.controller,
  });

  @override
  _EditCustomTextFieldState createState() => _EditCustomTextFieldState();
}

class _EditCustomTextFieldState extends State<EditCustomTextField> {
  final FocusNode _focusNode = FocusNode();
  bool _isFocused = false;

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      setState(() {
        _isFocused = _focusNode.hasFocus;
      });
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height, // Custom height
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: _isFocused
              ? AppColors.primary // Focused border color
              : AppColors.gray400, // Default border color
          width: 0.8,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 0.5,
            blurRadius: 5,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12),
      alignment: Alignment.center,
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: TextField(
                controller: widget.controller,
                focusNode: _focusNode,
                maxLines: 5,
                style: const TextStyle(
                  color: AppColors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
                decoration: InputDecoration(
                  labelText: widget.labelText,
                  labelStyle: const TextStyle(
                    fontSize: 18,
                    color: AppColors.gray700,
                    fontWeight: FontWeight.bold,
                  ),
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.only(top: 5, bottom: 8),
                  isDense: true,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
