import 'package:application_on_state_management/Cubits/SecurePassword/secure_password_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SecurePassUsingCubit extends StatelessWidget {
  const SecurePassUsingCubit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: BlocBuilder<SecurePasswordCubit, SecurePasswordState>(
            builder: (context, state) {
              return TextField(
                  obscureText: context.read<SecurePasswordCubit>().isSecure
                      ? false
                      : true,
                  decoration: InputDecoration(
                    hintText: "Password",
                    prefixIcon: const Icon(Icons.lock),
                    suffixIcon: IconButton(
                        onPressed: () {
                          context.read<SecurePasswordCubit>().showOrHide();
                        },
                        icon: context.read<SecurePasswordCubit>().isSecure
                            ? const Icon(Icons.visibility)
                            : const Icon(Icons.visibility_off)),
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                  ));
            },
          ),
        ),
      ),
    );
  }
}
