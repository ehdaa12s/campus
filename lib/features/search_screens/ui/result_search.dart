import 'package:champs/features/home_screen/ui/home_screen.dart';
import 'package:champs/features/search_screens/ui/widgets/drop_down_filter_button.dart';
import 'package:champs/features/search_screens/ui/widgets/profile_card_list_widget.dart';
import 'package:champs/features/search_screens/ui/widgets/search_bar_widget_for_result_screen.dart';
import 'package:flutter/material.dart';
import 'package:champs/core/widgets/custom_navagation_bar.dart';


class ResultSearch extends StatelessWidget {
  const ResultSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomNavigationBar(
        items: [
          NavItem(icon: Icons.home, label: 'الرئيسية'),
          NavItem(icon: Icons.message, label: 'الرسائل'),
          NavItem(icon: Icons.calendar_today, label: 'جلساتي'),
          NavItem(icon: Icons.account_circle, label: 'حسابي'),
          NavItem(icon: Icons.more_horiz, label: 'المزيد'),
        ],
        selectedIndex: 0,
        onTap: (index) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomeScreenForNavagationBar(initialIndex: index),
            ),
          );
        },
      ),
      body: ListView(
        children: const [
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                SizedBox(height: 30),
                SearchBarWidget(),
                SizedBox(height: 20),
                DropdownFiltersWidget(),
                SizedBox(height: 16),
                ProfileCardListWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
