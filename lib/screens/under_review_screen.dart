import 'package:champs/core/constants/app_assets.dart';
import 'package:champs/core/widgets/custom_button.dart';
import 'package:champs/core/widgets/custom_status_screen.dart';
import 'package:champs/screens/home_screen.dart';
import 'package:flutter/material.dart';

class UnderReviewScreen extends StatelessWidget {
  const UnderReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        body: Column(
          children: [
            const Expanded(
              child: Center(
                  child: CustomStatusScreen(
                svgPath: AppSvgs.underReview,
                title: 'طلبك قيد المراجعة',
                subtitle: 'تم استلام طلب الإنضمام لدينا في Campus بنجاح.\n'
                    'ولكن سيرتك الذاتية قيد المراجعة، وسيصلك\n'
                    'إشعار في حالة القبول أو الرفض.',
              )),
            ),
            Padding(
              // يجعل الزر دائمًا في الأسفل
              padding: const EdgeInsets.all(16.0),
              child: CustomButton(
                text: 'تم',
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreenForNavagationBar()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
