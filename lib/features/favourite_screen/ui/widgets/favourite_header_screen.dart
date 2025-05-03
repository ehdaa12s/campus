import 'package:champs/core/themes/app_text_styles.dart';
import 'package:flutter/material.dart';
class FavouriteHeaderScreen extends StatelessWidget {
  const FavouriteHeaderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios)),
        const SizedBox(
          width: 60,
        ),
        SizedBox(
          width: 135,
          child: Text(
            'المفضلة',
            textAlign: TextAlign.center,
            style: AppTextStyles. font24Grey900BalooBhaijaan2w700,
        ),
        ),
      ],
    );
  }
}
