import 'package:flutter/material.dart';

import '../../../../../resources/app_decorations.dart';
import '../../../../../resources/app_text_styles.dart';

class WhiteButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const WhiteButton({required this.onPressed, required this.text, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: double.maxFinite,
      decoration: AppDecorations.transparentButtonDecor,
      child: TextButton(
        onPressed: onPressed,
        child: Text(text, style: AppTextStyles.white16w600),
      ),
    );
  }
}
