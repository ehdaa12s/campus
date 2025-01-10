import 'package:champs/core/constants/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileGuidesCard extends StatelessWidget {
  final String imagePath;
  final String name;
  final String profession;
  final int sessionsCount;
  final int ratingsCount;
  final double rating;
  final int experienceYears;

  const ProfileGuidesCard({
    super.key,
    required this.imagePath,
    required this.name,
    required this.profession,
    required this.sessionsCount,
    required this.ratingsCount,
    required this.rating,
    required this.experienceYears,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: const Color(0xFF98A2B3),
          width: 1.0,
        ),
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 23,
                backgroundImage: AssetImage(imagePath),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF101828),
                      ),
                    ),
                    const SizedBox(height: 3),
                    Text(
                      profession,
                      style: const TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF475467),
                      ),
                    ),
                    const SizedBox(height: 3),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              SvgPicture.asset(
                AppSvgs.filledHeart,
                width: 23,
                height: 23,
                color: const Color(0xFFEF072F),
              ),
            ],
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildStatColumn('عدد الجلسات', '$sessionsCount جلسة'),
              _buildStatColumn2(
                'التقييمات',
                '($ratingsCount) $rating',
                icon: Icons.star,
                iconColor: Colors.amber,
              ),
              _buildStatColumn('سنوات الخبرة', '$experienceYears سنوات'),
            ],
          ),
        ],
      ),
    );
  }

  // Helper method to build columns for the profile stats
  Widget _buildStatColumn(String label, String value,
      {IconData? icon, Color? iconColor}) {
    return Column(
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 11,
            fontWeight: FontWeight.w400,
            color: Color(0xFF475467),
          ),
        ),
        const SizedBox(height: 5),
        Row(
          children: [
            Text(
              value,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: Color(0xFF101828),
              ),
            ),
            if (icon != null) ...[
              const SizedBox(width: 4),
              Icon(
                icon,
                size: 20,
                color: iconColor,
              ),
            ],
          ],
        ),
      ],
    );
  }

  Widget _buildStatColumn2(String label, String value,
      {IconData? icon, Color? iconColor}) {
    // Split the value into rating count and rating
    List<String> valueParts = value.split(' ');

    return Column(
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 11,
            fontWeight: FontWeight.w400,
            color: Color(0xFF475467),
          ),
        ),
        const SizedBox(height: 5),
        Row(
          children: [
            // Display the rating count with a different style
            Text(
              valueParts[0], // Rating count
              style: const TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w400,
                color: Color(0xFF101828),
              ),
            ),
            const SizedBox(width: 4),
            // Display the rating with a different style
            Text(
              valueParts.length > 1 ? valueParts[1] : '', // Rating
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: Color(0xFF101828),
              ),
            ),
            if (icon != null) ...[
              const SizedBox(width: 4),
              SvgPicture.asset(
                AppSvgs.star,
                width: 18,
                height: 18,
                color: iconColor,
              ),
            ],
          ],
        ),
      ],
    );
  }
}
