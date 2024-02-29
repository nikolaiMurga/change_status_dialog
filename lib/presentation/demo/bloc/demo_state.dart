part of 'demo_cubit.dart';

abstract class DemoState extends Equatable {
  const DemoState();
}

class DemoInitial extends DemoState {
  @override
  List<Object> get props => [];
}

class DemoLoading extends DemoState {
  @override
  List<Object> get props => [];
}

class DemoSucceed extends DemoState {
  @override
  List<Object> get props => [];
}

class DemoFailed extends DemoState {
  @override
  List<Object> get props => [];
}
