
import 'package:champs/features/notification/ui/widget/header_section.dart';
import 'package:champs/features/notification/ui/widget/notifcation_body_section.dart';
import 'package:flutter/material.dart';

class NotifcationScreen extends StatefulWidget {
  const NotifcationScreen({super.key});

  @override
  State<NotifcationScreen> createState() => _NotifcationScreenState();
}

class _NotifcationScreenState extends State<NotifcationScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 24,
              ),
              HeaderSectionForNotifcation(),
              SizedBox(
                height: 16,
              ),
              NotifcationBodySection(),
            ],
          ),
        ),
      ),
    );
  }
}
