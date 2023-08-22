import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:set_state_application/ReplaceUI/cubit/replace_ui_cubit_cubit.dart';
import 'package:set_state_application/Screens/replace_ui_with_set_state.dart';

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
        home: const ReplaceUiUsingSetState(),
      ),
    );
  }
}
