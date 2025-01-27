import 'package:champs/features/search_screens/ui/widgets/recent_search_widget.dart';
import 'package:champs/features/search_screens/ui/widgets/search_bar_widget.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 60),
              SearchBarWidget(),
              SizedBox(height: 20),
              RecentSearchesWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
