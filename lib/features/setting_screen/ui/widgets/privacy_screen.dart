import 'package:champs/core/routing/routes.dart';
import 'package:champs/core/themes/app_colors.dart';
import 'package:champs/core/themes/app_text_styles.dart';
import 'package:flutter/material.dart';

Future showDeleteAccountDialog(BuildContext context, String email) {
  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        backgroundColor: AppColors.white,
        content: SizedBox(
          width: 345,
          height: 211,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'حذف الحساب',
                style: AppTextStyles.font20BlackBalooBhaijaan2w700,
              ),
              const SizedBox(height: 8),
              Text(
                'هل انت متاكد حذف الحساب المرتبط بـ $emailلن تتمكن من التراجع عن هذا الاجراء.',
                style: AppTextStyles.font12GreyBalooBhaijaan2w400,
              ),
              const SizedBox(height: 8),
              Text(
                'لتأكيد ذلك , اكتب “DELETE”',
                style: AppTextStyles.font12LightGreyBalooBhaijaan2w400,
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 48,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide:
                                const BorderSide(color: Color(0xFF98A1B2)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, Routes.secuirtyScreen);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text(
                      'حذف',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    },
  );
}
