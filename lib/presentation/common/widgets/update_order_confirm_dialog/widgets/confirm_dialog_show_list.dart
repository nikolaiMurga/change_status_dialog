import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../resources/app_colors.dart';
import '../../../../../resources/app_strings.dart';
import '../../../../../resources/app_text_styles.dart';
import 'white_button.dart';
import '../bloc/update_order_confirm_dialog_cubit.dart';
import 'active_button.dart';
import 'app_checkbox.dart';
import 'statuses_list.dart';

class ConfirmDialogShowList extends StatelessWidget {
  const ConfirmDialogShowList({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<UpdateOrderConfirmDialogCubit>();
    return Material(
      color: Colors.transparent,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            decoration: BoxDecoration(color: AppColors.primaryColor, borderRadius: BorderRadius.circular(20)),
            height: 350,
            width: 350,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 32),
              child: Column(
                children: [
                  Text(AppStrings.updateOrder.tr(), style: AppTextStyles.white20w600, textAlign: TextAlign.center),
                  Padding(
                    padding: EdgeInsets.only(top: 24.0),
                    child: InkWell(
                      onTap: () => cubit.setStatus(status: cubit.newOrderStatus),
                      child: Container(
                        height: 48,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                            color: AppColors.primaryColor,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: AppColors.whiteCream, width: 1)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 14.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                cubit.newOrderStatus.tr(),
                                style: AppTextStyles.white16w600,
                              ),
                              const Icon(Icons.arrow_drop_down, color: AppColors.whiteCream)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Stack(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 12.0),
                            child: InkWell(
                              onTap: () => cubit.showStatusesList(),
                              child: SizedBox(
                                height: 48,
                                child: Row(
                                  children: [
                                    AppCheckBox(value: cubit.newPaidStatus, onChanged: (v) => cubit.changePaidStatus()),
                                    Text(AppStrings.paid.tr(), style: AppTextStyles.darkGrey16w400),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 12),
                            child: ActiveButton(text: AppStrings.confirm, isActive: true, onPressed: () {}),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 12),
                            child: WhiteButton(
                              onPressed: () => Navigator.pop(context),
                              text: AppStrings.cancel,
                            ),
                          ),
                        ],
                      ),
                      if (cubit.isShowList) StatusesList(list: cubit.statuses),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
