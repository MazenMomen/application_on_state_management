import 'package:application_on_state_management/Cubits/FastFilterBar/fast_filter_bar_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FfbUsingCubit extends StatelessWidget {
  FfbUsingCubit({super.key});
  List categories = [
    "قيد التنفيذ",
    "الملغية",
    "المكتملة",
    "تحت المراجعة",
    "تمت"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: BlocBuilder<FastFilterBarCubit, FastFilterBarState>(
            builder: (context, state) {
              return Row(
                children: [
                  for (int i = 0; i < categories.length; i++)
                    GestureDetector(
                      onTap: () {
                        context.read<FastFilterBarCubit>().colorize(i);
                      },
                      child: Container(
                        height: 50,
                        margin: const EdgeInsets.all(4),
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: context
                                        .read<FastFilterBarCubit>()
                                        .coloredIndex ==
                                    i
                                ? Colors.red
                                : Colors.grey.withOpacity(.5),
                            borderRadius: BorderRadius.circular(25)),
                        child: Text(
                          categories[i],
                          style: const TextStyle(fontSize: 21),
                        ),
                      ),
                    )
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
