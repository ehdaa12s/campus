import 'package:flutter/material.dart';

class CustomNavigationBar extends StatelessWidget {
  final List<NavItem> items;
  final int selectedIndex;
  final Function(int) onTap;

  const CustomNavigationBar({
    super.key,
    required this.items,
    required this.selectedIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 72,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color(0x11000000),
            blurRadius: 15,
            offset: Offset(0, -4),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(
          items.length,
          (index) => GestureDetector(
            onTap: () => onTap(index),
            child: _buildNavItem(
              item: items[index],
              isSelected: index == selectedIndex,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem({required NavItem item, required bool isSelected}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 64,
          height: 32,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: isSelected ? const Color(0xFFE0E0E0) : Colors.transparent,
          ),
          child: Center(
            child: Icon(
              item.icon,
              color: isSelected
                  ? const Color(0xFF00008D)
                  : const Color(0xFF667085),
              size: 24,
            ),
          ),
        ),
        const SizedBox(height: 4),
        Text(
          item.label,
          textAlign: TextAlign.center,
          style: TextStyle(
            color:
                isSelected ? const Color(0xFF00008D) : const Color(0xFF667085),
            fontSize: 12,
            fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500,
          ),
        ),
      ],
    );
  }
}

class NavItem {
  final IconData icon;
  final String label;

  NavItem({
    required this.icon,
    required this.label,
  });
}
