import 'package:champs/core/themes/app_text_styles.dart';
import 'package:champs/core/widgets/custom_user_info_card_chat.dart';
import 'package:champs/features/chat_screen/ui/widgets/chat_body_screen.dart';

import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const UserInfoCard(
              userName: 'أميرة محمد',
              status: 'نشط الأن',
              userImageUrl: 'assets/images/profile 2.png',
            ),

            const SizedBox(
              height: 16,
            ),
            Text(
              'اليوم',
              textAlign: TextAlign.right,
              style: AppTextStyles.font16BlackBalooBhaijaan2w700
            ),
            const ChatBodyScreen(),
          ],
        ),

      ),
    );
  }
}
