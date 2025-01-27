import 'package:champs/core/themes/app_text_styles.dart';
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
  final Color iconColor;

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
    required this.iconColor,
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
        children: [
          ListTile(
            title: Text(
              name,
              textAlign: TextAlign.right,
              style: AppTextStyles.font14BlackBalooBhaijaan2Bold,
            ),
            subtitle: Text(
              role,
              textAlign: TextAlign.right,
              style: AppTextStyles.font10Grey600BalooBhaijaan2Regular,
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
            trailing: Icon(
              Icons.favorite_border,
              color: iconColor,
            ),
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
          style: AppTextStyles.font11Grey600BalooBhaijaan2w400,
        ),
        const SizedBox(height: 4),
        Text(
          value,
          textAlign: TextAlign.center,
          style: AppTextStyles.font12Grey900BalooBhaijaan2w700,
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
          style: AppTextStyles.font11Grey600BalooBhaijaan2w400,
        ),
        const SizedBox(height: 4),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '($numOfRating)',
              style: AppTextStyles.font12Grey900BalooBhaijaan2w500,
            ),
            const SizedBox(width: 4),
            Text(
              rating,
              style: AppTextStyles.font14Grey900BalooBhaijaan2w600,
            ),
            icon,
            const SizedBox(width: 4),
          ],
        ),
      ],
    );
  }
}
