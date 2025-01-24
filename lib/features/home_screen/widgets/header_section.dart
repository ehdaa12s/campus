import 'package:champs/core/themes/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:champs/core/helpers/spaces.dart';


class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 25,
            backgroundImage:  AssetImage('assets/images/profile 2.png'),
          ),
          horizontalSpace(12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'خديجة أشرف',
                style:AppTextStyles.font18Grey900BalooBhaijaan2w700,
              ),
              Text(
                'UX UI Designer',
                style: AppTextStyles.font14Grey600BalooBhaijaan2w500,
              ),
            ],
          ),
          const Spacer(),
          IconButton(
            icon: const Icon(Icons.notifications_none_rounded),
            onPressed: () {
              Navigator.pushNamed(context, "/notificationsScreen");
            },
          ),
        ],
      ),
    );
  }
}
