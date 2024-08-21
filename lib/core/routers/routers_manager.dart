import 'package:bookly/core/model/books_model.dart';
import 'package:bookly/core/utils/service_locator.dart';
import 'package:bookly/features/home/data/repo/home_repo_impl.dart';
import 'package:bookly/features/home/presentation/view%20model/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly/features/home/presentation/view/screens/detalis_screen.dart';
import 'package:bookly/features/home/presentation/view/screens/home_screen.dart';
import 'package:bookly/features/search/data/repo/search_repo_impl.dart';
import 'package:bookly/features/search/presentation/view/screens/search_screens.dart';
import 'package:bookly/features/search/presentation/view%20model/search_books_cubit/search_books_cubit.dart';
import 'package:bookly/features/splash/ui/screens/splash_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
        builder: (context, state) => BlocProvider<SimilarBooksCubit>(
          create: (context) {
            return SimilarBooksCubit(getIt.get<HomeRepoImpl>());
          },
          child: DetailsScreen(bookModel: state.extra as BookModel),
        ),
      ),
      GoRoute(
        path: kSearchScreen,
        builder: (context, state) => BlocProvider<SearchBooksCubit>(
            create: (context) {
              return SearchBooksCubit(getIt.get<SearchRepoImpl>());
            },
            child: const SearchScreen()),
      ),
    ],
  );
}
