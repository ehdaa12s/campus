
import 'package:champs/features/notification/ui/widget/header_section.dart';
import 'package:champs/features/notification/ui/widget/notification_body_section.dart';
import 'package:flutter/material.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationsScreen> {
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
              NotificationBodySection(),
            ],
          ),
        ),
      ),
    );
  }
}
