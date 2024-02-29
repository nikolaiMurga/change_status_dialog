import 'package:change_status_dialog/presentation/demo/bloc/demo_cubit.dart';
import 'package:change_status_dialog/resources/app_constants.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'presentation/demo/demo_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  final DemoCubit demoCubit = DemoCubit();

  runApp(EasyLocalization(
    supportedLocales: const [AppConstants.english, AppConstants.polish, AppConstants.ukraine],
    path: AppConstants.localePath,
    fallbackLocale: AppConstants.english,
    useOnlyLangCode: true,
    child: MultiBlocProvider(
      providers: [
        BlocProvider<DemoCubit>(create: (_) => demoCubit),
      ],
      child: const DemoApp(),
    ),
  ));
}

class DemoApp extends StatelessWidget {
  const DemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      home: const DemoPage(),
    );
  }
}
