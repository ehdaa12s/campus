import 'package:champs/core/themes/app_text_styles.dart';
import 'package:champs/core/widgets/custom_search_button.dart';
import 'package:champs/features/chat_screen/ui/widgets/messgae_notication_body.dart';
import 'package:champs/features/chat_screen/ui/widgets/scroll_messgage_button.dart';

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
            SizedBox(
              width: 86,
              child: Text('الرسائل',
                  textAlign: TextAlign.start,
                  style: AppTextStyles.font24gray900Lazearw400),
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
            const ScrollMessgageButton(),
            const SizedBox(
              height: 24,
            ),
            const MessgaeNoticationBody()
          ],
        ),
      ),
    ));
  }
}
