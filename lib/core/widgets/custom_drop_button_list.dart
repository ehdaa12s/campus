import 'package:flutter/material.dart';

class CustomDropdownButton extends StatefulWidget {
  final String text;
  final List<String> items;
  final Color defaultColor;
  final Color activeColor;
  final double width;
  final double height;

  const CustomDropdownButton({
    super.key,
    required this.text,
    required this.items,
    required this.width,
    required this.height,
    this.defaultColor = const Color(0xFFE5E7EB),
    this.activeColor = const Color(0xFF00008D),
  });

  @override
  // ignore: library_private_types_in_public_api
  _CustomDropdownButtonState createState() => _CustomDropdownButtonState();
}

class _CustomDropdownButtonState extends State<CustomDropdownButton> {
  bool _isDropdownOpen = false;
  late Color _backgroundColor;

  @override
  void initState() {
    super.initState();
    _backgroundColor = widget.defaultColor;
  }

  void _toggleDropdown() {
    setState(() {
      _isDropdownOpen = !_isDropdownOpen;
      _backgroundColor =
          _isDropdownOpen ? widget.activeColor : widget.defaultColor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: _toggleDropdown,
          child: Container(
            width: widget.width,
            height: widget.height,
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: _backgroundColor,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                width: 1,
                color: const Color(0xFF98A1B2),
              ),

            ),
            child: Row(
             // mainAxisAlignment: MainAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.text,
                  style: const TextStyle(

                    color: Color(0xFF475467),
                    fontSize: 14,
                    fontFamily: 'Almarai',
                    fontWeight: FontWeight.w400,
                  ),
                ),

                Transform.rotate(
                  angle: _isDropdownOpen ? 0 : -3.14,
                  child: const Icon(
                    Icons.keyboard_arrow_down,
                    color: Color(0xFF475467),
                    size: 16,
                  ),
                ),
              ],
            ),
          ),
        ),
        if (_isDropdownOpen)
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: widget.defaultColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              children: widget.items
                  .map(
                    (item) => InkWell(
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 8,
                        ),
                        child: Text(
                          item,
                          style: const TextStyle(
                           color: Color(0xFF475467),
                            fontSize: 14,
                            fontFamily: 'Almarai',
                          ),
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
      ],
    );
  }
}
