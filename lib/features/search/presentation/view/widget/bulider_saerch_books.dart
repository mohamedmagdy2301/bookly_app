import 'package:bookly/core/widgets/custom_circular_progress_loading.dart';
import 'package:bookly/core/widgets/custom_failure_message.dart';
import 'package:bookly/features/home/presentation/view/widgets/builder_newest_books.dart';
import 'package:bookly/features/home/presentation/view/widgets/newest_listview.dart';
import 'package:bookly/features/search/presentation/view%20model/search_books_cubit/search_books_cubit.dart';
import 'package:bookly/features/search/presentation/view/widget/search_results_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BuilderSearchBooks extends StatelessWidget {
  const BuilderSearchBooks({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBooksCubit, SearchBooksState>(
      builder: (context, state) {
        if (state is SearchBooksInitial) {
          return SearchResultsSection(
            height: height,
            widgetView: const BuilderNewestBooks(
              category: "Programming",
            ),
            tilte: 'Suggested Books',
          );
        } else if (state is SearchBooksSuccess) {
          return SearchResultsSection(
            height: height,
            widgetView: NewestListView(
              newestBooksList: state.searchBooksList,
            ),
            tilte: 'Search Results',
          );
        } else if (state is SearchBooksFailure) {
          return SizedBox(
              height: height * 0.8,
              child: CustomFailureMessage(errorMessage: state.message));
        } else {
          return SizedBox(
              height: height * 0.87,
              child: const CustomCircularProgressLoading());
        }
      },
    );
  }
}
