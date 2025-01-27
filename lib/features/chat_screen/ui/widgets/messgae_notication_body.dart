
import 'package:champs/core/routing/routes.dart';
import 'package:champs/features/chat_screen/ui/widgets/custom_chat_card_notification.dart';
import 'package:flutter/cupertino.dart';

class MessgaeNoticationBody extends StatelessWidget {
  const MessgaeNoticationBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NotificationCard(
          onTap: () {
            Navigator.pushNamed(context,Routes.chatScreen);
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
            Navigator.pushNamed(context,Routes.chatScreen);
          },
        ),
        NotificationCard(
          timeAgo: 'الأمس',
          notificationText: 'محتوى قابل للتغيير محتوى قابل للتغيير.',
          userName: 'ماريان نبيل',
          userImageUrl: 'assets/images/profile.png',
          onTap: () {
            Navigator.pushNamed(context,Routes.chatScreen);
          },
        ),
        NotificationCard(
          timeAgo: 'الأمس',
          notificationText: 'محتوى قابل للتغيير محتوى قابل لللتغيير.',
          userName: 'عبدالله حسين',
          userImageUrl: 'assets/images/profile.png',
          onTap: () {
            Navigator.pushNamed(context,Routes.chatScreen);
          },
        ),
        NotificationCard(
          timeAgo: 'الأربعاء',
          notificationText: 'محتوى قابل للتغيير محتوى قابل للتغيير.',
          userName: 'خالد مكرم',
          userImageUrl: 'assets/images/profile.png',
          onTap: () {
            Navigator.pushNamed(context,Routes.chatScreen);
          },
        ),
        NotificationCard(
          timeAgo: 'الأربعاء',
          notificationText: 'محتوى قابل للتغيير محتوى قابل للتغيير.',
          userName: 'فيروز البغدادي',
          userImageUrl: 'assets/images/profile.png',
          onTap: () {
            Navigator.pushNamed(context,Routes.chatScreen);
          },
        ),
      ],
    );
  }
}
