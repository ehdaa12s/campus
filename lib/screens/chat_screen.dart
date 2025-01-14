import 'package:champs/core/widgets/custom_chat_card_message.dart';
import 'package:champs/core/widgets/custom_enter_meassge.dart';
import 'package:champs/core/widgets/custom_user_info_card_chat.dart';
import 'package:champs/core/widgets/custom_chat_card_left.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            UserInfoCard(
              userName: 'أميرة محمد',
              status: 'نشط الأن',
              userImageUrl: 'assets/images/profile 2.png',
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              'اليوم',
              textAlign: TextAlign.right,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontFamily: 'Baloo Bhaijaan 2',
                fontWeight: FontWeight.w700,
                height: 1.38,
              ),
            ),
            RotatedTextCardForAnotherSide(
              content: 'محتوى قابل للتغيير محتوى قابل للتغيير',
              time: '1 :13 AM',
              userImageUrl: 'assets/images/profile 2.png',
            ),
            RotatedTextCardForAnotherSide(
              content: 'محتوى قابل للتغيير',
              time: '1 :13 AM',
            ),
            RotatedTextCardForAnotherSide(
              content:
                  'محتوى قابل للتغيير محتوى  محتوى\n قابل للتغيير للتغيير محتوى قابل للتعديل  ',
              time: '\n \n1 :13 AM',
            ),
            SizedBox(
              height: 24,
            ),
            RotatedTextCard(
              content: 'محتوى قابل للتغيير محتوى قابل للتغيير',
              time: '1 :13 AM',
              userImageUrl: 'assets/images/profile 2.png',
            ),
            RotatedTextCard(
              content: 'محتوى قابل للتغيير',
              time: '1 :13 AM',
            ),
           SizedBox(
             height: 240,
           ),
           CustomContainerToEnterMessage(
                  hintText: 'اكتب رسالة',
                  leadingIcon: Icons.send,
                  trailingIcon: Icons.camera_enhance_sharp),

          ],
        ),
      ),
    );
  }
}
