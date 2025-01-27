

import 'package:champs/features/home_screen/ui/widgets/categories_section.dart';
import 'package:champs/features/home_screen/ui/widgets/header_section.dart';
import 'package:champs/features/home_screen/ui/widgets/search_section.dart';
import 'package:champs/features/home_screen/ui/widgets/sugessted_profiles_section.dart';
import 'package:champs/features/home_screen/ui/widgets/top_rated_profile_section.dart';
import 'package:flutter/material.dart';

class HomeScreenContent extends StatelessWidget {
  const HomeScreenContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(8.0),
          children: const [
            SizedBox(height: 20),
            HeaderSection(),
            SizedBox(height: 8),
            SearchSection(),
            SizedBox(height: 8),
            CategoriesSection(),
            SizedBox(height: 8),
            TopRatedProfilesSection(),
            SizedBox(height: 16),
            SuggestedProfilesSection(),
          ],
        ),
      ),
    );
  }
}
