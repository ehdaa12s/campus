import 'package:champs/core/widgets/custom_card_for_secudle%20_session.dart';
import 'package:flutter/material.dart';

class PendingSessionsScreen extends StatelessWidget {
  const PendingSessionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CustomCardWidgetForSecudle(
            detailsText: 'عرض تفاصيل الطلب',
            userName: 'فاطمة علي',
            userRole: 'UX Designer',
            userImageUrl: 'assets/images/profile 2.png',
            appointmentTime: '3:00 PM - 3:30 PM',
            appointmentDate: 'الجمعة ,3 يناير',
            onTap: () {
              Navigator.pushNamed(context, "/menteProfileScreen");
            },
            onDetailsTap: () {
              Navigator.pushNamed(context, "/showSessionDetails");

            },
            cancelButtonLabel: 'إلغاء الطلب',
            detailsButtonLabel: 'تفاصيل الحجز',
            statusMessage: 'لم يتم قبول او رفض طلبك من قبل الموجه حتى الآن',
            icon: Icons.info,
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
