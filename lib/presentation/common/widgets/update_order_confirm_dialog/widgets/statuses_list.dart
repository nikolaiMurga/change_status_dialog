import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../resources/app_decorations.dart';
import '../../../../../resources/app_text_styles.dart';
import '../bloc/update_order_confirm_dialog_cubit.dart';

class StatusesList extends StatelessWidget {
  final List<String> list;

  const StatusesList({required this.list, super.key});

  @override
  Widget build(BuildContext context) {
    // final isEn = context.locale == AppConstants.english;
    final cubit = context.read<UpdateOrderConfirmDialogCubit>();
    return Container(
      decoration: AppDecorations.cardBoxDecor,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: list.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () => cubit.setStatus (status: list[index]),
              child: SizedBox(
                height: 55,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(list[index].tr(), style: AppTextStyles.darkGrey15w400.withHeight(22 / 15)),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
