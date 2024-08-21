import 'package:bookly_app/core/widgets/custom_circular_progress_loading.dart';
import 'package:bookly_app/core/widgets/custom_failure_message.dart';
import 'package:bookly_app/features/home/presentation/view%20model/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/similar_books_listview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BuilderSimilarBooks extends StatelessWidget {
  const BuilderSimilarBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.14,
      child: BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
          builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SimilarBooksListView(similarBooksList: state.similarBooksList);
        } else if (state is SimilarBooksFailure) {
          return CustomFailureMessage(errorMessage: state.errorMessage);
        } else {
          return const CustomCircularProgressLoading();
        }
      }),
    );
  }
}
