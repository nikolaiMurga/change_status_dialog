import 'package:flutter/material.dart';

import '../../../../../resources/app_colors.dart';

class AppCheckBox extends StatelessWidget {
  final bool value;
  final Function(bool) onChanged;

  const AppCheckBox({required this.value, required this.onChanged, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0)),
      side: MaterialStateBorderSide.resolveWith(
        (states) => BorderSide(width: 1.0, color: value ? AppColors.primaryColor : AppColors.whiteCream),
      ),
      activeColor: AppColors.primaryColor,
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      value: value,
      onChanged: (value) => onChanged(value!),
    );
  }
}
