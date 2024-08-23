import 'package:bookly/core/routers/routers_manager.dart';
import 'package:bookly/features/splash/presentation/view/widgets/animated_builder_logo.dart';
import 'package:bookly/features/splash/presentation/view/widgets/animated_builder_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController animationControllerText, animationControllerLogo;
  late Animation<Offset> slideAnimationText, slideAnimationLogo;
  @override
  void initState() {
    super.initState();
    animationText();
    animationLogo();
    goToHomeScreen();
  }

  @override
  void dispose() {
    super.dispose();
    animationControllerLogo.dispose();
    animationControllerText.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AnimatedBuilderLogo(
            slideAnimationLogo: slideAnimationLogo,
          ),
          const SizedBox(height: 8),
          AnimatedBuilderText(
            slideAnimationText: slideAnimationText,
          ),
        ],
      ),
    );
  }

  void goToHomeScreen() {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        GoRouter.of(context).pushReplacement(RoutersManager.kHomeScreen);
      },
    );
  }

  void animationText() {
    animationControllerText = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    slideAnimationText = Tween<Offset>(
      begin: const Offset(0, -4),
      end: Offset.zero,
    ).animate(animationControllerText);
    animationControllerText.forward();
  }

  void animationLogo() {
    animationControllerLogo = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    slideAnimationLogo = Tween<Offset>(
      begin: const Offset(0, 4),
      end: const Offset(0, 0),
    ).animate(animationControllerLogo);
    animationControllerLogo.forward();
  }
}
