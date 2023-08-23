import 'package:application_on_state_management/ReplaceUI/cubit/replace_ui_cubit_cubit.dart';
import 'package:application_on_state_management/Screens/replace_ui_with_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ReplaceUiCubit>(
          create: (BuildContext context) => ReplaceUiCubit(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const ReplaceUiUsingCubit(),
      ),
    );
  }
}
