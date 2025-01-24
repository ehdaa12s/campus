import 'package:champs/core/themes/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustomCardForNotifaction extends StatelessWidget {
  const CustomCardForNotifaction({
    super.key,
    required this.title,
    required this.subTitle,
    required this.imageUrl,
    required this.reminder,
  });

  final String title;
  final String subTitle;
  final String imageUrl;
  final String reminder;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343,
      height: 112,
      padding: const EdgeInsets.all(8),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFF98A1B2)),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            contentPadding: EdgeInsets.zero,
            leading: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage(imageUrl),
            ),
            title: Text(
              title,
              textAlign: TextAlign.right,
              style: AppTextStyles.font12Grey900BalooBhaijaan2w700,
            ),

            subtitle: Text(
              subTitle,
              textAlign: TextAlign.right,
              style: AppTextStyles.font12Grey500BalooBhaijaan2w500,
            ),
            trailing: const SizedBox(width: 8),
          ),

Expanded(child:

          Text(
            reminder,
            textAlign: TextAlign.center,

            style: AppTextStyles.font12Grey600BalooBhaijaan2w400,

),
),


        ],
      ),
    );
  }
}
