import 'package:flutter/material.dart';

class RadiosUsingSetState extends StatefulWidget {
  const RadiosUsingSetState({super.key});

  @override
  State<RadiosUsingSetState> createState() => _RadiosUsingSetStateState();
}

class _RadiosUsingSetStateState extends State<RadiosUsingSetState> {
  int selectedValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index) {
        return RadioListTile(
          value: selectedValue,
          groupValue: index,
          onChanged: (value) {
            setState(() {
              selectedValue = index;
            });
          },
          title: Text("Title ${index + 1}"),
        );
      },
    ));
  }
}
