import 'package:champs/core/themes/app_text_styles.dart';
import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 40,
          height: 40,
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios),
          ),
        ),
        const Spacer(),
        SizedBox(
          width: 68,
          child: Text('البحث',
              textAlign: TextAlign.right,
              style: AppTextStyles.font20Grey900BalooBhaijaan2w700),
        ),
        const Spacer(),
      ],
    );
  }
}
