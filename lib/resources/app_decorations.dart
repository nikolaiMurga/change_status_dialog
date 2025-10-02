import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppDecorations {
  static final activeButtonDecor = BoxDecoration(color: AppColors.primaryColor, borderRadius: BorderRadius.circular(8), border: Border.all(color: AppColors.whiteCream, width: 1));
  static final notActiveButtonDecor = BoxDecoration(color: AppColors.primaryColor, borderRadius: BorderRadius.circular(8), border: Border.all(color: AppColors.grey, width: 1));

  // neumorph box
  static final cardBoxDecor = BoxDecoration(
    color: AppColors.primaryColor,
    borderRadius: BorderRadius.circular(8),
    border: Border.all(color: AppColors.whiteCream),
    boxShadow: [
      BoxShadow(color: AppColors.grey.withOpacity(0.08), blurRadius: 25, offset: const Offset(0, 4)),
    ],
  );

  // outlined main button decoration
  static final whiteButtonDecor = BoxDecoration(
    color: AppColors.white,
    border: Border.all(width: 1, color: AppColors.primaryColor),
    borderRadius: BorderRadius.circular(8),
  );

  static final transparentButtonDecor = BoxDecoration(
    color: AppColors.primaryColor,
    border: Border.all(width: 1, color: AppColors.whiteCream),
    borderRadius: BorderRadius.circular(8),
  );
}