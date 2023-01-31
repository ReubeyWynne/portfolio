import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class BlinkingCursor extends StatelessWidget {
  const BlinkingCursor({Key? key, required this.style}) : super(key: key);

  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      pause: Duration.zero,
      repeatForever: true,
      animatedTexts: [
        TypewriterAnimatedText("",
            textStyle: style, speed: const Duration(milliseconds: 500))
      ],
    );
  }
}
