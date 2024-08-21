import 'package:bookly/core/routers/routers_manager.dart';
import 'package:bookly/core/theme/theming_app.dart';
import 'package:bookly/core/utils/service_locator.dart';
import 'package:bookly/features/home/data/repo/home_repo_impl.dart';
import 'package:bookly/features/home/presentation/view%20model/feature_books_cubit/feature_books_cubit.dart';
import 'package:bookly/features/home/presentation/view%20model/newest_books_cubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) {
            return FeatureBooksCubit(
              getIt.get<HomeRepoImpl>(),
            )..fatchFeatureBooks();
          },
        ),
        BlocProvider(
          create: (context) {
            return NewestBooksCubit(
              getIt.get<HomeRepoImpl>(),
            );
          },
        ),
      ],
      child: MaterialApp.router(
        routerConfig: RoutersManager.router,
        debugShowCheckedModeBanner: false,
        theme: appTheme,
      ),
    );
  }
}
