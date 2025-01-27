import 'package:champs/core/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:champs/core/widgets/custom_search_button.dart';
import 'package:champs/features/search_screens/search_screen.dart';

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
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SearchScreen()),
                );
              },
              width: double.infinity,
            ),
          ),
          const SizedBox(width: 8),
          Container(
            width: 40,
            height: 40,
            padding: const EdgeInsets.all(8),
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 1, color: AppColors.gray400),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: const Icon(Icons.filter_alt_sharp),
          ),
        ],
      ),
    );
  }
}
