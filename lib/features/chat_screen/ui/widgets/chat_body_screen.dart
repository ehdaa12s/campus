
import 'package:champs/core/widgets/custom_enter_meassge.dart';
import 'package:champs/features/chat_screen/ui/widgets/custom_chat_card_left.dart';
import 'package:champs/features/chat_screen/ui/widgets/custom_chat_card_message.dart';
import 'package:flutter/material.dart';

class ChatBodyScreen extends StatelessWidget {
  const ChatBodyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
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
    );
  }
}
