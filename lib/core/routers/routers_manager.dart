import 'package:bookly_app/features/home/data/model/books_model.dart';
import 'package:bookly_app/features/home/presentation/view/screens/detalis_screen.dart';
import 'package:bookly_app/features/home/presentation/view/screens/home_screen.dart';
import 'package:bookly_app/features/search/ui/screens/search_screens.dart';
import 'package:bookly_app/features/splash/ui/screens/splash_screen.dart';
import 'package:go_router/go_router.dart';

class RoutersManager {
  static const String kSplashScreen = '/';
  static const String kHomeScreen = "/homeView";
  static const String kDetailsScreen = "/detailsView";
  static const String kSearchScreen = "/searchView";

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
      GoRoute(
        path: kDetailsScreen,
        builder: (context, state) =>
            DetailsScreen(bookModel: state.extra as BookModel),
      ),
      GoRoute(
        path: kSearchScreen,
        builder: (context, state) => const SearchScreen(),
      ),
    ],
  );
}
