import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTextStyles {
  // white
  static const white20w600 = TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: AppColors.white);
  static const white16w600 = TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: AppColors.white);

  // main gray
  static const mainGrey16w600 = TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: AppColors.mainGrey);

  // dark gery
  static const darkGrey15w400 = TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: AppColors.darkGrey);

  // green
  static const green16w600 = TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: AppColors.primaryColor);

  // dark grey
  static const darkGrey16w400 = TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: AppColors.darkGrey);
  static const darkGrey20w600 = TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: AppColors.darkGrey);

}

extension CustomTextStyle on TextStyle {
  TextStyle withHeight(double height) => copyWith(height: height);
}
