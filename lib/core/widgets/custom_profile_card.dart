import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  final String name;
  final String role;
  final String imageUrl;
  final String experience;
  final String rating;
  final String numOfRating;
  final String sessions;
  final Icon icon;
  final double width;

  const ProfileCard({
    super.key,
    required this.name,
    required this.role,
    required this.imageUrl,
    required this.experience,
    required this.rating,
    required this.numOfRating,
    required this.sessions,
    required this.icon,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: const EdgeInsets.all(8.0),
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFFF2F4F7)),
          borderRadius: BorderRadius.circular(8),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x11616161),
            blurRadius: 25,
            offset: Offset(0, 2),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        // Allows the column to shrink-wrap its content
        children: [
          ListTile(
            title: Text(
              name,
              textAlign: TextAlign.right,
              style: const TextStyle(
                color: Color(0xFF101828),
                fontSize: 14,
                fontWeight: FontWeight.w500,
                height: 1.50,
              ),
            ),
            subtitle: Text(
              role,
              textAlign: TextAlign.right,
              style: const TextStyle(
                color: Color(0xFF475467),
                fontSize: 10,
                fontWeight: FontWeight.w500,
                height: 2.20,
              ),
            ),
            leading: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            trailing: const Icon(Icons.favorite_border),
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _InfoColumn(title: 'سنوات الخبرة', value: experience),
              _RatingColumn(
                title: 'التقييمات',
                rating: rating,
                numOfRating: numOfRating,
                icon: icon,
              ),
              _InfoColumn(title: 'عدد الجلسات', value: sessions),
            ],
          ),
        ],
      ),
    );
  }
}

class _InfoColumn extends StatelessWidget {
  final String title;
  final String value;

  const _InfoColumn({
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Color(0xFF475467),
            fontSize: 11,
            fontWeight: FontWeight.w400,
            height: 1.45,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          value,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Color(0xFF101828),
            fontSize: 12,
            fontWeight: FontWeight.w700,
            height: 1.33,
          ),
        ),
      ],
    );
  }
}

class _RatingColumn extends StatelessWidget {
  final String title;
  final String rating;
  final String numOfRating;
  final Icon icon;

  const _RatingColumn({
    required this.title,
    required this.rating,
    required this.numOfRating,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Color(0xFF475467),
            fontSize: 11,
            fontWeight: FontWeight.w400,
            height: 1.45,
          ),
        ),
        const SizedBox(height: 4),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '($numOfRating)',
              style: const TextStyle(
                color: Color(0xFF101828),
                fontSize: 12,
                fontWeight: FontWeight.w500,
                height: 1.14,
              ),
            ),
            const SizedBox(width: 4),
            Text(
              rating,
              style: const TextStyle(
                color: Color(0xFF101828),
                fontSize: 14,
                fontWeight: FontWeight.w600,
                height: 1.14,
              ),
            ),
            icon,
            const SizedBox(width: 4),
          ],
        ),
      ],
    );
  }
}
