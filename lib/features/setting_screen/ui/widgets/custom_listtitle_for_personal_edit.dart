import 'package:flutter/material.dart';
import 'package:champs/core/themes/app_text_styles.dart';

class CustomListTileForPersonalEdit extends StatelessWidget {
  final String title;
  final String subtitle;
  final VoidCallback? onEdit;

  const CustomListTileForPersonalEdit({
    super.key,
    required this.title,
    required this.subtitle,
    this.onEdit,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        textAlign: TextAlign.right,
        style: AppTextStyles.font16Gray900BalooBhaijaan2w500,
      ),
      subtitle: Text(
        subtitle,
        textAlign: TextAlign.right,
        style: AppTextStyles.font14Gray500BalooBhaijaanw400,
      ),
      trailing: GestureDetector(
        onTap: onEdit,
        child: Text(
          'تعديل',
          style: AppTextStyles.font14Blue100BalooBhaijaanw500,
        ),
      ),
    );
  }
}