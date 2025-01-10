import 'package:champs/core/constants/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileSectionHeader extends StatelessWidget {
  final String title;
  final VoidCallback? onAddTap; // Callback for the add icon
  final VoidCallback? onEditTap; // Callback for the edit icon

  const ProfileSectionHeader({
    super.key,
    required this.title,
    this.onAddTap, // Optional callback for add icon
    this.onEditTap, // Optional callback for edit icon
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Color(0xFF101828),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Row(
            children: [
              if (onAddTap !=
                  null) // Show add icon only if onAddTap is provided
                InkWell(
                  onTap: onAddTap,
                  child: SvgPicture.asset(
                    AppSvgs.add,
                    color: const Color(0xFF667085),
                    width: 23,
                    height: 23,
                  ),
                ),
              if (onAddTap != null) const SizedBox(width: 14),
              if (onEditTap !=
                  null) // Show edit icon only if onEditTap is provided
                InkWell(
                  onTap: onEditTap,
                  child: SvgPicture.asset(
                    AppSvgs.edit,
                    color: const Color(0xFF667085),
                    width: 23,
                    height: 23,
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
