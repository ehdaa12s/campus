import 'package:champs/core/themes/app_text_styles.dart';
import 'package:champs/features/rating_screen/ui/show_feedback_container.dart';
import 'package:champs/features/sessions_screen/ui/widgets/profile_card_show_details_check.dart';
import 'package:champs/features/sessions_screen/ui/widgets/show_details_info_card.dart';

import 'package:flutter/material.dart';
import 'package:champs/core/widgets/custom_text_button_for_boarding.dart';


class ShowSessionDetails extends StatelessWidget {
  const ShowSessionDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 16),
              _buildHeader(context),
              const SizedBox(height: 16),
              const ProfileCardForDetailsSession(),
              const SizedBox(height: 16),
              const SessionInfoCard(),
              const SizedBox(height: 60),
              CustomTextButtonForBoarding(
                buttonText: 'تاكيد الحجز',
                onPressed: () {
                  //Navigator.pushNamed(context, Routes.feadbackScreen);
                  showFeedbackDialog(context);
                },
                width: 345,
                height: 54,
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
        const Spacer(),
        Text(
          'تفاصيل الحجز',
          textAlign: TextAlign.center,
          style: AppTextStyles. font20BlackBalooBhaijaan2w700
        ),
        const Spacer(flex: 2),
      ],
    );
  }
}
