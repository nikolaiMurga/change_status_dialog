import 'package:change_status_dialog/presentation/demo/bloc/demo_cubit.dart';
import 'package:change_status_dialog/presentation/demo/demo_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DemoPage extends StatelessWidget {
  const DemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: BlocProvider.of<DemoCubit>(context),
      child: const DemoScreen(),
    );
  }
}
