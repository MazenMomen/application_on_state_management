import 'package:flutter/material.dart';

class FfbUsingSetState extends StatefulWidget {
  const FfbUsingSetState({super.key});

  @override
  State<FfbUsingSetState> createState() => _FfbUsingSetStateState();
}

class _FfbUsingSetStateState extends State<FfbUsingSetState> {
  int color = 0;
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
            child: Row(
              children: [
                for (int i = 0; i < categories.length; i++)
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        color = i;
                      });
                    },
                    child: Container(
                      height: 50,
                      margin: const EdgeInsets.all(4),
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: color == i
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
            )),
      ),
    );
  }
}
