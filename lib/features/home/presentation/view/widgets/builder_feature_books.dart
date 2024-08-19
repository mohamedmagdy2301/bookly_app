import 'package:bookly_app/features/home/presentation/view%20model/feature_books_cubit/feature_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/feature_book_listview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BuilderFeatureBooks extends StatelessWidget {
  const BuilderFeatureBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatureBooksCubit, FeatureBooksState>(
        builder: (context, state) {
      if (state is FeatureBooksSuccess) {
        return FeatureBooksListView(featureBooksList: state.featureBooksList);
      } else if (state is FeatureBooksFailure) {
        return Text(state.errorMessage);
      } else {
        return const Center(child: CircularProgressIndicator());
      }
    });
  }
}
