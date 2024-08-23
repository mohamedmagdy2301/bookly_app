import 'package:flutter/material.dart';

class AnimatedBuilderLogo extends StatelessWidget {
  const AnimatedBuilderLogo({
    super.key,
    required this.slideAnimationLogo,
  });

  final Animation<Offset> slideAnimationLogo;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slideAnimationLogo,
      builder: (context, _) {
        return SlideTransition(
          position: slideAnimationLogo,
          child: const Text(
            "BOOKLY",
            style: TextStyle(
              fontSize: 50,
              fontFamily: "Matemasie",
              letterSpacing: 6,
            ),
            textAlign: TextAlign.center,
          ),
        );
      },
    );
  }
}
