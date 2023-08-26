import 'package:application_on_state_management/Cubits/FastFilterBar/fast_filter_bar_cubit.dart';
import 'package:application_on_state_management/Cubits/RadioButton/radio_button_cubit.dart';
import 'package:application_on_state_management/Cubits/SecurePassword/secure_password_cubit.dart';
import 'package:application_on_state_management/Screens/UsingSetState/radios_using_set_state.dart';

import '../Cubits/ReplaceUI/replace_ui_cubit_cubit.dart';
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
        BlocProvider<FastFilterBarCubit>(
          create: (BuildContext context) => FastFilterBarCubit(),
        ),
        BlocProvider<SecurePasswordCubit>(
          create: (BuildContext context) => SecurePasswordCubit(),
        ),
        BlocProvider<RadioButtonCubit>(
          create: (BuildContext context) => RadioButtonCubit(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.cyanAccent),
          useMaterial3: true,
        ),
        home: const RadiosUsingSetState(),
      ),
    );
  }
}
