import 'package:flutter/material.dart';

import '../../../resources/app_colors.dart';

mixin ModalDialogMixin {
  Future<Object?> showModalDialog(BuildContext context, {required Widget child}) {
    return showDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: MaterialLocalizations.of(context).dialogLabel,
      barrierColor: AppColors.black.withOpacity(0.5),
      builder: (builderContext) => child,
    );
  }
}
