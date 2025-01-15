import 'package:champs/core/constants/app_assets.dart';
import 'package:champs/core/widgets/custom_button.dart';
import 'package:champs/core/widgets/custom_status_screen.dart';
import 'package:flutter/material.dart';

class RejectedOrderScreen extends StatelessWidget {
  const RejectedOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        body: Column(
          children: [
            const Expanded(
              child: Center(
                  child: CustomStatusScreen(
                svgPath: AppSvgs.rejectedOrder,
                title: 'تم رفض طلبك',
                subtitle: 'للأسف لم يتم قبول طلبك لدينا.\n'
                    'برجاء إعادة تقديم الطلب و رفع السيرة الذاتية ثم\n'
                    'تواصل معنا',
              )),
            ),
            Padding(
              // يجعل الزر دائمًا في الأسفل
              padding: const EdgeInsets.all(16.0),
              child: CustomButton(
                text: 'تقديم الطلب مرة اخرى',
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
