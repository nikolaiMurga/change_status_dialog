import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../resources/app_strings.dart';

part 'update_order_confirm_dialog_state.dart';

class UpdateOrderConfirmDialogCubit extends Cubit<UpdateOrderConfirmDialogState> {
  UpdateOrderConfirmDialogCubit({
    required this.newPaidStatus,
    required this.newOrderStatus,
    required this.initialPaidStatus,
    required this.initialOrderStatus,
  }) : super(UpdateOrderConfirmDialogInitial());

  bool initialPaidStatus;
  bool newPaidStatus;
  String initialOrderStatus;
  String newOrderStatus;

  List<String> checkList = [AppStrings.created, AppStrings.inProgress, AppStrings.ready, AppStrings.completed];
  List<String> statuses = [AppStrings.inProgress, AppStrings.ready, AppStrings.completed];
  bool isShowList = false;

  bool get isButtonActive {
    if (_isInitialOrderCompleted) {
      return false;
    } else if (_isCompletedPaid) {
      return true;
    } else if (_isStepForward && _isFromReadyToCompleted && !newPaidStatus) {
      return false;
    } else if (_isPaidStatusChanged && _isOrderStatusInitial) {
      return true;
    } else if (_isOrderStatusCorrectlyChanged) {
      return true;
    }
    return false;
  }

  bool get _isOrderStatusCorrectlyChanged => _isStepForward || _isBackFromReadyToInProgress;

  bool get _isPaidStatusChanged => newPaidStatus != initialPaidStatus;

  bool get _isOrderStatusInitial => newOrderStatus == initialOrderStatus;

  bool get _isInitialOrderCompleted => initialOrderStatus == AppStrings.completed;

  bool get _isBackFromReadyToInProgress => initialOrderStatus == AppStrings.ready && _isStepBackward;

  bool get _isStepForward => checkList.indexOf(newOrderStatus) == checkList.indexOf(initialOrderStatus) + 1;

  bool get _isStepBackward => checkList.indexOf(newOrderStatus) == checkList.indexOf(initialOrderStatus) - 1;

  bool get _isFromReadyToCompleted => newOrderStatus == AppStrings.completed && initialOrderStatus == AppStrings.ready;

  bool get _isCompletedPaid => _isFromReadyToCompleted && newPaidStatus;

  void changePaidStatus() {
    // if (isPaidInitial) return;
    emit(UpdateOrderConfirmDialogLoading());
    newPaidStatus = !newPaidStatus;
    emit(UpdateOrderConfirmDialogInitial());
  }

  void showStatusesList() {
    emit(UpdateOrderConfirmDialogLoading());
    isShowList = true;
    emit(ShowStatusesList());
  }

  void setStatus({required String status}) {
    emit(UpdateOrderConfirmDialogLoading());
    isShowList = false;
    newOrderStatus = status;
    emit(UpdateOrderConfirmDialogInitial());
  }
}
