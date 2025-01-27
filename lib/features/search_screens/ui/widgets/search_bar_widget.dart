import 'package:champs/core/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:champs/core/routing/routes.dart';
import 'package:champs/core/widgets/custom_search_button.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomSearchButton(
          text: 'ابحث عن افضل الموجهين في الوطن العربي',
          width: 296,
          onTap: () {
            Navigator.pushNamed(context, Routes.resultSearchScreen);
          },
        ),
        const SizedBox(width: 8),
        Container(
          width: 40,
          height: 40,
          padding: const EdgeInsets.all(8),
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 1, color: AppColors.white50),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: const Icon(Icons.filter_alt_sharp),
        ),
      ],
    );
  }
}
