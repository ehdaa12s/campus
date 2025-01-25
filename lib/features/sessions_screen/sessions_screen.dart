import 'package:champs/core/themes/app_text_styles.dart';
import 'package:champs/features/sessions_screen/widgets/upcoming_session_screen.dart';
import 'package:flutter/material.dart';

import 'widgets/complete _session_screen.dart';
import 'widgets/pending_session_screen.dart';

class SessionsScreen extends StatelessWidget {
  const SessionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              const SizedBox(height: 24),
              _buildHeader(context),
              TabBar(
                indicatorColor: const Color(0xFF00008D),
                labelColor: const Color(0xFF00008D),
                labelStyle:AppTextStyles.font16PrimaryBalooBhaijaan2w600,
                unselectedLabelStyle: AppTextStyles.font16Brown500BalooBhaijaan2w500,
                  tabs: const [
                  Tab(text: 'القادمة'),
                  Tab(text: 'المعلقة'),
                  Tab(text: 'المكتملة'),
                ],
              ),
              const SizedBox(height: 24),
              const Expanded(
                child: TabBarView(
                  children: [
                    UpcomingSessionsScreen(),
                    PendingSessionsScreen(),
                    CompletedSessionsScreen(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        const SizedBox(width: 60),
        SizedBox(
          width: 90,
          child: Text(
            'الجلسات ',
            textAlign: TextAlign.center,
            style: AppTextStyles. font24BlackBalooBhaijaan2w700,
          ),
        ),
      ],
    );
  }
}
