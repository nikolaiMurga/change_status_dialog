import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/update_order_confirm_dialog_cubit.dart';
import 'widgets/confirm_dialog_initial.dart';
import 'widgets/confirm_dialog_show_list.dart';

class UpdateOrderConfirmDialogScreen extends StatelessWidget {
  final Function(String, bool) onPressed;

  const UpdateOrderConfirmDialogScreen({required this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateOrderConfirmDialogCubit, UpdateOrderConfirmDialogState>(
      builder: (context, state) {
        if (state is UpdateOrderConfirmDialogInitial) {
          return ConfirmDialogInitial(onPressed: onPressed);
        }
        if (state is ShowStatusesList) {
          return ConfirmDialogShowList();
        }
        return const SizedBox.shrink();
      },
    );
  }
}
