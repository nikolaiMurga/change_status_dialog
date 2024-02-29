import 'package:change_status_dialog/resources/app_strings.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'demo_state.dart';

class DemoCubit extends Cubit<DemoState> {
  DemoCubit() : super(DemoInitial());

  String orderStatus = AppStrings.created;
  bool paidStatus = false;

  String get getOrderStatus => orderStatus;

  bool get getPaidStatus => paidStatus;

  void updateOrderStatus(String newOrderStatus, newPaidStatus) {
    emit(DemoLoading());
    orderStatus = newOrderStatus;
    paidStatus = newPaidStatus;
    emit(DemoSucceed());
  }
}
