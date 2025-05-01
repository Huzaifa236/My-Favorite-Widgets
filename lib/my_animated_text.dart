import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class MyAnimatedText extends StatelessWidget {
  const MyAnimatedText({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedTextKit(
          repeatForever: false,
          animatedTexts: [TyperAnimatedText("Hello My Name Hazi")],
        ),
      ),
    );
  }
}
