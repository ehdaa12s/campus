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
        scrolledUnderElevation: 0,
        elevation: 0.0,
        shadowColor: AppColors.white,
      ),
      primaryColor: AppColors.primary,
      scaffoldBackgroundColor: AppColors.white,
      fontFamily: AppTextStyles.balooBhaiJaan2FontFamily,
      primarySwatch: AppColors.themeColor,
      textSelectionTheme:  TextSelectionThemeData(
        cursorColor: AppColors.primary,
        selectionColor: AppColors.primary20,
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
          todayBackgroundColor: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.selected)) {
              return AppColors.primary20;
            }
            return AppColors.white;
          }),
          dayBackgroundColor: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.selected)) {
              return AppColors.primary20;
            }
            return AppColors.white;
          }),
          todayBorder: BorderSide.none,
          todayForegroundColor: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.selected)) {
              return AppColors.gray700;
            }
            return AppColors.gray400;
          }),
          dayForegroundColor: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.selected)) {
              return AppColors.gray700;
            }
            return AppColors.gray400;
          }),
          dayStyle: const TextStyle(color: AppColors.primary)),
    );
