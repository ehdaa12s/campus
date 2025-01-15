import 'package:champs/core/themes/app_text_styles.dart';
import 'package:flutter/material.dart';

import 'app_colors.dart';

ThemeData appTheme(context) => ThemeData(
      primaryColorLight: AppColors.primary,
      colorScheme: Theme.of(context).colorScheme.copyWith(
            primary: AppColors.primary,
          ),
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.white,
        elevation: 0.0,
        shadowColor: AppColors.white,
      ),
      primaryColor: AppColors.primary,
      scaffoldBackgroundColor: AppColors.white,
      fontFamily: AppTextStyles.balooBhaiJaan2FontFamily,
      primarySwatch: AppColors.themeColor,
      textSelectionTheme: const TextSelectionThemeData(
        cursorColor: AppColors.primary,
        selectionColor: AppColors.primary50,
        selectionHandleColor: AppColors.primary50,
      ),
      dividerColor: AppColors.white,
      datePickerTheme: DatePickerThemeData(
          backgroundColor: AppColors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 6,
          headerBackgroundColor: AppColors.white,
          headerForegroundColor: AppColors.primary,
          // headerHeadlineStyle: TextStyle(
          //   color: AppColors.gray900,
          //    fontSize: 16,
          //   fontFamily: AppTextStyles.balooBhaiJaan2FontFamily,
          //   fontWeight: FontWeight.w400,
          // ),
          dividerColor: AppColors.white,
          todayBackgroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.selected)) {
              return AppColors.primary25;
            }
            return AppColors.white;
          }),
          dayBackgroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.selected)) {
              return AppColors.primary25;
            }
            return AppColors.white;
          }),
          todayBorder: BorderSide.none,
          todayForegroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.selected)) {
              return AppColors.gray700;
            }
            return AppColors.gray400;
          }),
          dayForegroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.selected)) {
              return AppColors.gray700;
            }
            return AppColors.gray400;
          }),
          dayStyle: const TextStyle(color: AppColors.primary)),
    );
