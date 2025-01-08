import 'package:champs/constant.dart';
import 'package:flutter/material.dart';

class CustomToggleButton extends StatefulWidget {
  final String label;
  final Color activeColor;
  final Color inactiveColor;

  const CustomToggleButton({
    super.key,
    required this.label,
    this.activeColor = const Color(0xFF00008D),
    this.inactiveColor = Colors.white,
  });

  @override
  // ignore: library_private_types_in_public_api
  _CustomToggleButtonState createState() => _CustomToggleButtonState();
}

class _CustomToggleButtonState extends State<CustomToggleButton> {
  bool _isActive = false;

  void _toggleState() {
    setState(() {
      _isActive = !_isActive;
    });
  }

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = TextStyle(
      color: _isActive ? Colors.white : const Color(0xFF344054),
      fontSize: 12,
      fontFamily: fontName,
      fontWeight: FontWeight.w500,
    );

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 4,
        vertical: 0.5,
      ),
      child: SizedBox(
        // width: 72,
        height: 40,
        child: TextButton(
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all<Color>(
              _isActive ? widget.activeColor : widget.inactiveColor,
            ),
            shape: WidgetStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
                side: const BorderSide(color: Color(0xFF344054)),
              ),
            ),
          ),
          onPressed: _toggleState,
          child: Text(
            widget.label,
            textAlign: TextAlign.center,
            style: textStyle,
          ),
        ),
      ),
    );
  }
}
