import 'package:champs/constant.dart';
import 'package:champs/core/themes/app_text_styles.dart';
import 'package:flutter/material.dart';

class NotificationCard extends StatelessWidget {
  final String timeAgo;
  final String notificationText;
  final String userName;
  final String userImageUrl;
  final int? notificationCount;
  final VoidCallback onTap;

  const NotificationCard({
    super.key,
    required this.timeAgo,
    required this.notificationText,
    required this.userName,
    required this.userImageUrl,
    this.notificationCount,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return
      Container(
      width: double.infinity,
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: onTap,
            child: Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage(userImageUrl),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        userName,
                        style: AppTextStyles.font12Grey900BalooBhaijaan2w700,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        notificationText,
                        style: AppTextStyles.font12Grey900BalooBhaijaan2w400,
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      timeAgo,
                      style: AppTextStyles.font12Grey900BalooBhaijaan2w400,
                    ),
                    const SizedBox(height: 4),
                    if (notificationCount != null)
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            width: 15,
                            height: 15,
                            decoration: const BoxDecoration(
                              color: Color(0xFF00008D),
                              shape: BoxShape.circle,
                            ),
                          ),
                          Text(
                            '$notificationCount',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontFamily: fontName,
                              fontWeight: FontWeight.w700,
                              height: 1.83,
                            ),
                          ),
                        ],
                      ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 18),
          const Divider(
            color: Color(0xFFD9D9D9),
            thickness: 1,
          ),
        ],
      ),
    );
  }
}
