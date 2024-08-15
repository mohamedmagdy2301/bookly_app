import 'package:bookly_app/features/home/ui/screens/home_screen.dart';
import 'package:bookly_app/features/splash/ui/screens/splash_screen.dart';
import 'package:go_router/go_router.dart';

class RoutersManager {
  static const String kSplashScreen = '/';
  static const String kHomeScreen =
      "lib/features/home/ui/screens/home_screen.dart";

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: kSplashScreen,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: kHomeScreen,
        builder: (context, state) => const HomeScreen(),
      ),
    ],
  );
}
