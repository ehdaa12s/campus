import 'package:champs/core/widgets/custom_card%20_session_profile.dart';
import 'package:flutter/material.dart';

class CompletedSessionsScreen extends StatelessWidget {
  const CompletedSessionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CustomCardWidget(
            detailsText: 'عرض تفاصيل الطلب',
            userName: 'فاطمة علي',
            userRole: 'UX Designer',
            userImageUrl: 'assets/images/profile 2.png',
            appointmentTime: '3:00 PM - 3:30 PM',
            appointmentDate: 'الجمعة ,3 يناير',
            onTap: () {
              Navigator.pushNamed(context, "/menteProfileScreen");
            },
          ),
          const SizedBox(
            height: 18,
          ),
          CustomCardWidget(
            detailsText: 'عرض تفاصيل الطلب',
            userName: 'فاطمة علي',
            userRole: 'UX Designer',
            userImageUrl: 'assets/images/profile 2.png',
            appointmentTime: '3:00 PM - 3:30 PM',
            appointmentDate: 'الجمعة ,3 يناير',
            onTap: () {
              Navigator.pushNamed(context, "/menteProfileScreen");
            },
          ),
          const SizedBox(
            height: 18,
          ),
          CustomCardWidget(
            detailsText: 'عرض تفاصيل الطلب',
            userName: 'فاطمة علي',
            userRole: 'UX Designer',
            userImageUrl: 'assets/images/profile 2.png',
            appointmentTime: '3:00 PM - 3:30 PM',
            appointmentDate: 'الجمعة ,3 يناير',
            onTap: () {
              Navigator.pushNamed(context, "/menteProfileScreen");
            },
          ),
          const SizedBox(
            height: 18,
          ),
          CustomCardWidget(
            detailsText: 'عرض تفاصيل الطلب',
            userName: 'فاطمة علي',
            userRole: 'UX Designer',
            userImageUrl: 'assets/images/profile 2.png',
            appointmentTime: '3:00 PM - 3:30 PM',
            appointmentDate: 'الجمعة ,3 يناير',
            onTap: () {
              Navigator.pushNamed(context, "/menteProfileScreen");
            },
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
