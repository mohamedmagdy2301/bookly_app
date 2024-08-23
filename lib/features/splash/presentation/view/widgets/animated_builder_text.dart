import 'package:flutter/material.dart';

class AnimatedBuilderText extends StatelessWidget {
  const AnimatedBuilderText({
    super.key,
    required this.slideAnimationText,
  });

  final Animation<Offset> slideAnimationText;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slideAnimationText,
      builder: (context, _) {
        return SlideTransition(
          position: slideAnimationText,
          child: const Text(
            "Read Free Books",
            style: TextStyle(
              fontSize: 18,
              fontFamily: "Matemasie",
              wordSpacing: 4,
              letterSpacing: 4,
            ),
            textAlign: TextAlign.center,
          ),
        );
      },
    );
  }
}
