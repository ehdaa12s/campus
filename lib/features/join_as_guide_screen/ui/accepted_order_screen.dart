import 'package:champs/core/constants/app_assets.dart';
import 'package:champs/core/widgets/custom_button.dart';
import 'package:champs/core/widgets/custom_status_screen.dart';
import 'package:flutter/material.dart';

class AcceptedOrderScreen extends StatelessWidget {
  const AcceptedOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        body: Column(
          children: [
            const Expanded(
              child: Center(
                child: CustomStatusScreen(
                  svgPath: AppSvgs.acceptedOrder,
                  title: 'تم قبول طلبك بنجاح',
                  subtitle: 'هانينا! تم قبول طلبك للإنضمام كومجه مهني لدينا \n'
                      'في Campus.\n'
                      'بإمكانك الآن البدء في الترتيب لمواعيد جلساتك\n'
                      'الإرشادية',
                ),
              ),
            ),
            Padding(
              // يجعل الزر دائمًا في الأسفل
              padding: const EdgeInsets.all(16.0),
              child: CustomButton(
                text: 'العودة للصفحة الرئيسية',
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
