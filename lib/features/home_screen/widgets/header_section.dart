import 'package:flutter/material.dart';
import 'package:champs/core/helpers/spaces.dart';
import 'package:champs/screens/notifcation_screen.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 25,
            backgroundImage:  AssetImage('assets/images/profile 2.png'),
          ),
          horizontalSpace(12),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'خديجة أشرف',
                style: TextStyle(
                  color: Color(0xFF101828),
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  height: 1.67,
                ),
              ),
              Text(
                'UX UI Designer',
                style: TextStyle(
                  color: Color(0xFF475467),
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  height: 2.14,
                ),
              ),
            ],
          ),
          const Spacer(),
          IconButton(
            icon: const Icon(Icons.notifications_none_rounded),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const NotifcationScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}
