import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppDecorations {
  static final activeButtonDecor = BoxDecoration(color: AppColors.primaryColor, borderRadius: BorderRadius.circular(8));
  static final notActiveButtonDecor = BoxDecoration(color: AppColors.mainLightGrey, borderRadius: BorderRadius.circular(8));

  // neumorph box
  static final cardBoxDecor = BoxDecoration(
    color: AppColors.whiteCream,
    borderRadius: BorderRadius.circular(8),
    boxShadow: [
      BoxShadow(color: AppColors.shadowColor.withOpacity(0.08), blurRadius: 25, offset: const Offset(0, 4)),
    ],
  );

  // outlined main button decoration
  static final whiteButtonDecor = BoxDecoration(
    color: AppColors.white,
    border: Border.all(width: 1, color: AppColors.primaryColor),
    borderRadius: BorderRadius.circular(8),
  );
}