import 'package:flutter/material.dart';

import '../../../../../resources/app_decorations.dart';
import '../../../../../resources/app_text_styles.dart';

class ActiveButton extends StatelessWidget {
  final bool isActive;
  final String text;
  final VoidCallback onPressed;

  const ActiveButton({required this.text, this.isActive = false, required this.onPressed, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: double.maxFinite,
      decoration: isActive ? AppDecorations.activeButtonDecor : AppDecorations.notActiveButtonDecor,
      child: TextButton(
        onPressed: () => isActive ? onPressed() : null,
        child: Text(text, style: isActive ? AppTextStyles.white16w600 : AppTextStyles.mainGrey16w600),
      ),
    );
  }
}
