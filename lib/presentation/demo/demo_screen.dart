import 'package:change_status_dialog/presentation/demo/bloc/demo_cubit.dart';
import 'package:change_status_dialog/resources/app_extentions.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../resources/app_colors.dart';
import '../../resources/app_strings.dart';
import '../../resources/app_text_styles.dart';
import '../common/helpers/modal_dialog_mixin.dart';
import '../common/widgets/update_order_confirm_dialog/update_order_confirm_dialog_page.dart';
import '../common/widgets/update_order_confirm_dialog/widgets/app_checkbox.dart';

class DemoScreen extends StatelessWidget with ModalDialogMixin {
  const DemoScreen({super.key});

  void onPressed(DemoCubit cubit, _) {
    showModalDialog(_,
        child: UpdateOrderConfirmDialogPage(
          onPressed: (_, __) => cubit.updateOrderStatus(_, __),
          isPaid: cubit.getPaidStatus,
          orderStatus: cubit.getOrderStatus,
        ));
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<DemoCubit>();
    return Scaffold(
      backgroundColor: AppColors.whiteCream,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<DemoCubit, DemoState>(
              builder: (context, state) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(cubit.getOrderStatus.tr(), style: AppTextStyles.darkGrey20w600),
                    Text(cubit.getPaidStatus.paidStatusToString().tr()),
                  ],
                );
              },
            ),
            const SizedBox(height: 25),
            MaterialButton(
              onPressed: () => onPressed(cubit, context),
              color: AppColors.primaryColor,
              child: Text(AppStrings.showDialog.tr(), style: AppTextStyles.white20w600),
            ),
          ],
        ),
      ),
    );
  }
}
