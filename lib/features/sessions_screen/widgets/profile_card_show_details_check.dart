import 'package:champs/core/themes/app_text_styles.dart';
import 'package:flutter/material.dart';

class ProfileCardForDetailsSession extends StatelessWidget {
  const ProfileCardForDetailsSession({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      decoration: _cardDecoration(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const CircleAvatar(
                radius: 22,
                backgroundImage: AssetImage('assets/images/profile.png'),
              ),
              const SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'معتصم شعبان',
                    style: AppTextStyles.font16BlackBalooBhaijaan2w700,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Product Designer',
                    style: AppTextStyles.font14Brown100BalooBhaijaan2,
                  ),
                ],
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, "/menteProfileScreen");
            },
            child: Text(
              'عرض الملف الشخصي',
              style: AppTextStyles.font14PrimaryBalooBhaijaan2,
            ),
          ),
        ],
      ),
    );
  }

  BoxDecoration _cardDecoration() {
    return BoxDecoration(
      color: const Color(0xFFFDFDFE),
      borderRadius: BorderRadius.circular(4),
      border: Border.all(color: const Color(0xFFCCCCD1), width: 1),
      boxShadow: const [
        BoxShadow(color: Color(0x0F000000), blurRadius: 8),
      ],
    );
  }
}
