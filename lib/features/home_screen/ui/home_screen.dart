import 'package:champs/core/widgets/custom_navagation_bar.dart';
import 'package:champs/features/home_screen/widgets/home_screen_view_body.dart';
import 'package:champs/features/mentee_screen/ui/mentee_profile_screen.dart';

import 'package:champs/features/more_menu_screen/ui/more_menu.dart';
import 'package:flutter/material.dart';
import '../chat_screen/message_screen.dart';
import '../../screens/sessions_screen.dart';

class HomeScreenForNavagationBar extends StatefulWidget {
  final int initialIndex;
  const HomeScreenForNavagationBar({
    super.key,
    this.initialIndex = 0,
  });

  @override
  State<HomeScreenForNavagationBar> createState() => _HomeScreenForNaState();
}

class _HomeScreenForNaState extends State<HomeScreenForNavagationBar> {
  late int _currentIndex = 0;

  final List<Widget> _pages = [
    const HomeScreenContent(),
    const MessagesScreen(),
    const SessionsScreen(),
    const MenteProfileScreen(),
    const MoreMenu()
  ];

  final List<NavItem> _navItems = [
    NavItem(icon: Icons.home, label: 'الرئيسية'),
    NavItem(icon: Icons.message, label: 'الرسائل'),
    NavItem(icon: Icons.calendar_today, label: 'جلساتي'),
    NavItem(icon: Icons.account_circle, label: 'حسابي'),
    NavItem(icon: Icons.more_horiz, label: 'المزيد'),
  ];

  void _onTabSelected(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomNavigationBar(
        items: _navItems,
        selectedIndex: _currentIndex,
        onTap: _onTabSelected,
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: _pages,
      ),
    );
  }
}

