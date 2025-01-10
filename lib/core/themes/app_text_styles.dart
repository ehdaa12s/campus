import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_colors.dart';
import 'font_weight_helper.dart';

class AppTextStyles {
  static const String lalezarFontFamily = 'Lalezar';
  static const String balooBhaiJaan2FontFamily = 'Baloo_Bhaijaan_2';
  static const String poppinsFontFamily = 'Poppins';

  static TextStyle font20Grey900BalooBhaijaan2Bold = TextStyle(
    fontFamily: balooBhaiJaan2FontFamily,
    fontSize: 20.sp,
    fontWeight: FontWeightHelper.bold,
    color: AppColors.gray900,
  );
}
