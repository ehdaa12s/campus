import 'package:champs/core/themes/app_text_styles.dart';
import 'package:champs/features/sessions_screen/ui/widgets/complete%20_session_screen.dart';
import 'package:champs/features/sessions_screen/ui/widgets/pending_session_screen.dart';
import 'package:champs/features/sessions_screen/ui/widgets/upcoming_session_screen.dart';

import 'package:flutter/material.dart';

class SessionsScreen extends StatelessWidget {
  const SessionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body:
        Column(
            children: [
              const SizedBox(height: 24),
              _buildHeader(context),
              Padding(padding:const EdgeInsets.all(
                24


              ),
              child:

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
              ),
              const SizedBox(height: 24),
              const Expanded(
                child: Padding(padding: EdgeInsets.only(
                  left: 24,
                  right: 24,
                  bottom: 24,
                ),
                child:TabBarView(
                  children: [
                    UpcomingSessionsScreen(),
                    PendingSessionsScreen(),
                    CompletedSessionsScreen(),
                  ],
                ),
              ),
              ),

            ],
          ),
        ),

    );
  }

  Widget _buildHeader(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(
      24,
    ),
      child:
      Row(
      children: [
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        const Spacer(
          flex: 1,
        ),
        SizedBox(
          width: 120,
          child: Text(
            'الجلسات ',
            textAlign: TextAlign.center,
            style: AppTextStyles. font24BlackBalooBhaijaan2w700,
          ),
        ),
       const  Spacer(
          flex: 1,
        )

      ],
      ),
    );
  }
}
