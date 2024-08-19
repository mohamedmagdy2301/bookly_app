import 'package:bookly_app/core/routers/routers_manager.dart';
import 'package:bookly_app/core/theme/theming_app.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/features/home/data/repo/home_repo_impl.dart';
import 'package:bookly_app/features/home/presentation/view%20model/feature_books_cubit/feature_books_cubit.dart';
import 'package:dio/dio.dart';
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
              HomeRepoImpl(
                ApiService(
                  Dio(),
                ),
              ),
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
