import 'app_strings.dart';

extension PaidStatus on bool {
  String paidStatusToString() {
    return this ? AppStrings.paid : AppStrings.unpaid;
  }
}
