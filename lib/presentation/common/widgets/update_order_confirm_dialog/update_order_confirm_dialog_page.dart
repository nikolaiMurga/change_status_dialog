import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/update_order_confirm_dialog_cubit.dart';
import 'update_order_confirm_dialog_screen.dart';

class UpdateOrderConfirmDialogPage extends StatelessWidget {
  final Function(String, bool) onPressed;
  final bool isPaid;
  final String orderStatus;

  const UpdateOrderConfirmDialogPage({required this.onPressed, required this.isPaid, required this.orderStatus, super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => UpdateOrderConfirmDialogCubit(
        initialPaidStatus: isPaid,
        initialOrderStatus: orderStatus,
        newPaidStatus: isPaid,
        newOrderStatus: orderStatus,
      ),
      child: UpdateOrderConfirmDialogScreen(onPressed: onPressed),
    );
  }
}
