import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:set_state_application/ReplaceUI/cubit/replace_ui_cubit_cubit.dart';

class ReplaceUiUsingCubit extends StatelessWidget {
  const ReplaceUiUsingCubit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<ReplaceUiCubit, ReplaceUiState>(
                builder: (context, state) {
              if (state is ShowText) {
                return const Text("السلام عليكم");
              } else if (state is ShowImage) {
                return SizedBox(
                  height: 200,
                  width: 200,
                  child: Image.network(
                      "https://media.sproutsocial.com/uploads/2017/02/10x-featured-social-media-image-size.png"),
                );
              } else if (state is ShowSquare) {
                return Container(
                  height: 200,
                  width: 200,
                  decoration: const BoxDecoration(color: Colors.cyanAccent),
                );
              } else {
                return const Text("Click a button");
              }
            }),
            const SizedBox(
              height: 100,
              width: 100,
            ),
            ElevatedButton(
                onPressed: () {
                  context.read<ReplaceUiCubit>().showText();
                },
                child: const Text("show text")),
            ElevatedButton(
                onPressed: () {
                  context.read<ReplaceUiCubit>().showImage();
                },
                child: const Text("show image")),
            ElevatedButton(
                onPressed: () {
                  context.read<ReplaceUiCubit>().showSquare();
                },
                child: const Text("show square")),
            ElevatedButton(
                onPressed: () {
                  context.read<ReplaceUiCubit>().reset();
                },
                child: const Text("Reset")),
          ],
        ),
      ),
    );
  }
}
