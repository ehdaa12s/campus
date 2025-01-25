import 'package:champs/core/widgets/custom_card_for_secudle%20_session.dart';
import 'package:flutter/material.dart';

class UpcomingSessionsScreen extends StatelessWidget {
  const UpcomingSessionsScreen({super.key});

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
            icon: Icons.check_circle,
            cancelButtonLabel: 'محادثة الموجه',
            detailsButtonLabel: 'تغيير الموعد',
            statusMessage:
                'هذا الحجز مؤكد و مجدول. يمكنك إلغاءه فقط قبل \n12 ساعة من موعد بدايته',
            onDetailsTap: () {
              Navigator.pushNamed(context, "/bookYourSession");
            },
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
