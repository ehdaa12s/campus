import 'package:champs/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:champs/core/widgets/custom_search_button.dart';




class SearchSection extends StatelessWidget {
  const SearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
          Expanded(
            child: CustomSearchButton(
              text: 'ابحث عن افضل الموجهين في الوطن العربي',
              onTap: () {
             Navigator.pushNamed(context, Routes.searchScreen);
              },
              width: double.infinity,
            ),
          ),


        ],
      ),
    );
  }
}
