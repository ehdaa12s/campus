import 'package:champs/core/widgets/custom_chat_card_notification.dart';
import 'package:champs/core/widgets/custom_search_button.dart';
import 'package:champs/core/widgets/custom_text_button_for_fields_selection.dart';
import 'package:champs/screens/chat_screen.dart';
import 'package:flutter/material.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 42,
            ),
            const SizedBox(
              width: 86,
              child: Text(
                'الرسائل',
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Color(0xFF101828),
                  fontSize: 24,
                  fontFamily: 'Lalezar',
                  fontWeight: FontWeight.w400,
                  height: 1,
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            CustomSearchButton(
              text: 'ابحث  ',
              width: 345,
              onTap: () {},
            ),
            const SizedBox(
              height: 16,
            ),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: EdgeInsets.all(4),
                child: Row(
                  children: [
                    CustomToggleButton(
                      label: 'الواردة',
                    ),
                    CustomToggleButton(
                      label: 'غير المقروءة',
                    ),
                    CustomToggleButton(
                      label: 'الأرشيف',
                    ),
                    CustomToggleButton(
                      label: 'طلبات المراسلة',
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            NotificationCard(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ChatScreen(),
                  ),
                );
              },
              timeAgo: 'منذ 5 دقائق',
              notificationText: 'محتوى قابل للتغيير محتوى قابل للتغيير.',
              userName: 'معتصم شعبان',
              userImageUrl: 'assets/images/profile.png',
              notificationCount: 1,
            ),
            NotificationCard(
              timeAgo: 'منذ ساعتين',
              notificationText: 'محتوى قابل للتغيير محتوى قابل للتغيير .',
              userName: 'ألاء سيد',
              userImageUrl: 'assets/images/profile.png',
              notificationCount: 1,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ChatScreen(),
                  ),
                );
              },
            ),
            NotificationCard(
              timeAgo: 'الأمس',
              notificationText: 'محتوى قابل للتغيير محتوى قابل للتغيير.',
              userName: 'ماريان نبيل',
              userImageUrl: 'assets/images/profile.png',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ChatScreen(),
                  ),
                );
              },
            ),
            NotificationCard(
              timeAgo: 'الأمس',
              notificationText: 'محتوى قابل للتغيير محتوى قابل لللتغيير.',
              userName: 'عبدالله حسين',
              userImageUrl: 'assets/images/profile.png',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ChatScreen(),
                  ),
                );
              },
            ),
            NotificationCard(
              timeAgo: 'الأربعاء',
              notificationText: 'محتوى قابل للتغيير محتوى قابل للتغيير.',
              userName: 'خالد مكرم',
              userImageUrl: 'assets/images/profile.png',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ChatScreen(),
                  ),
                );
              },
            ),
            NotificationCard(
              timeAgo: 'الأربعاء',
              notificationText: 'محتوى قابل للتغيير محتوى قابل للتغيير.',
              userName: 'فيروز البغدادي',
              userImageUrl: 'assets/images/profile.png',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ChatScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    ));
  }
}
