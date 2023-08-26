import 'package:flutter/material.dart';

class SecurePassUsingSetState extends StatefulWidget {
  const SecurePassUsingSetState({super.key});

  @override
  State<SecurePassUsingSetState> createState() =>
      _SecurePassUsingSetStateState();
}

class _SecurePassUsingSetStateState extends State<SecurePassUsingSetState> {
  bool isSecure = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
                obscureText: !isSecure,
                decoration: InputDecoration(
                  hintText: "Password",
                  prefixIcon: const Icon(Icons.lock),
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          isSecure = !isSecure;
                        });
                      },
                      icon: isSecure
                          ? const Icon(Icons.visibility)
                          : const Icon(Icons.visibility_off)),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                ))),
      ),
    );
  }
}
