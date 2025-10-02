import 'package:change_status_dialog/presentation/demo/bloc/demo_cubit.dart';
import 'package:change_status_dialog/presentation/demo/demo_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DemoPage extends StatelessWidget {
   DemoPage({super.key});

  final DemoCubit cubit = DemoCubit.demoCubit(); // factory

  @override
  Widget build(BuildContext context) {
    // return BlocProvider.value(
    //   value: BlocProvider.of<DemoCubit>(context), // Singleton
    //   child: const DemoScreen(),
    // );
    return BlocProvider(
      create: (_) => cubit,
      child: const DemoScreen(),
    );
  }
}
