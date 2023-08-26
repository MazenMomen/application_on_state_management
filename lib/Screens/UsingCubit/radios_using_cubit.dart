import 'package:application_on_state_management/Cubits/RadioButton/radio_button_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RadiosUsingCubit extends StatelessWidget {
  const RadiosUsingCubit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<RadioButtonCubit, RadioButtonState>(
        builder: (context, state) {
          return ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) {
              return RadioListTile(
                value: context.read<RadioButtonCubit>().selectedButton,
                groupValue: index,
                onChanged: (value) {
                  context.read<RadioButtonCubit>().switchRadio(index);
                },
                title: Text("Title ${index + 1}"),
              );
            },
          );
        },
      ),
    );
  }
}
