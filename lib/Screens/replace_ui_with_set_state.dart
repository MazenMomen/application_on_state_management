import 'package:flutter/material.dart';

enum UiState { showText, showImage, showSquare, none }

class ReplaceUiUsingSetState extends StatefulWidget {
  const ReplaceUiUsingSetState({Key? key}) : super(key: key);

  @override
  ReplaceUiUsingSetStateState createState() => ReplaceUiUsingSetStateState();
}

class ReplaceUiUsingSetStateState extends State<ReplaceUiUsingSetState> {
  UiState _currentState = UiState.none;

  void _showText() {
    setState(() {
      _currentState = UiState.showText;
    });
  }

  void _showImage() {
    setState(() {
      _currentState = UiState.showImage;
    });
  }

  void _showSquare() {
    setState(() {
      _currentState = UiState.showSquare;
    });
  }

  void _reset() {
    setState(() {
      _currentState = UiState.none;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_currentState == UiState.showText)
              const Text("السلام عليكم")
            else if (_currentState == UiState.showImage)
              SizedBox(
                height: 200,
                width: 200,
                child: Image.network(
                    "https://media.sproutsocial.com/uploads/2017/02/10x-featured-social-media-image-size.png"),
              )
            else if (_currentState == UiState.showSquare)
              Container(
                height: 200,
                width: 200,
                decoration: const BoxDecoration(color: Colors.cyanAccent),
              )
            else
              const Text("Click a button"),
            const SizedBox(
              height: 100,
              width: 100,
            ),
            ElevatedButton(
              onPressed: _showText,
              child: const Text("show text"),
            ),
            ElevatedButton(
              onPressed: _showImage,
              child: const Text("show image"),
            ),
            ElevatedButton(
              onPressed: _showSquare,
              child: const Text("show square"),
            ),
            ElevatedButton(
              onPressed: _reset,
              child: const Text("Reset"),
            ),
          ],
        ),
      ),
    );
  }
}
