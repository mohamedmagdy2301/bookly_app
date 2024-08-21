import 'package:bookly/core/widgets/custom_circular_progress_loading.dart';
import 'package:bookly/core/widgets/custom_failure_message.dart';
import 'package:bookly/features/home/presentation/view%20model/feature_books_cubit/feature_books_cubit.dart';
import 'package:bookly/features/home/presentation/view/widgets/feature_book_listview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BuilderFeatureBooks extends StatelessWidget {
  const BuilderFeatureBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.274,
      child: BlocBuilder<FeatureBooksCubit, FeatureBooksState>(
        builder: (context, state) {
          if (state is FeatureBooksSuccess) {
            return FeatureBooksListView(
              featureBooksList: state.featureBooksList,
            );
          } else if (state is FeatureBooksFailure) {
            return CustomFailureMessage(
              errorMessage: state.errorMessage,
            );
          } else {
            return const CustomCircularProgressLoading();
          }
        },
      ),
    );
  }
}
