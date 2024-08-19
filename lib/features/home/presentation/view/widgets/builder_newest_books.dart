import 'package:bookly_app/core/widgets/custom_circular_progress_loading.dart';
import 'package:bookly_app/core/widgets/custom_failure_message.dart';
import 'package:bookly_app/features/home/presentation/view%20model/feature_books_cubit/feature_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/newest_listview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BuilderNewestBooks extends StatelessWidget {
  const BuilderNewestBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.274,
      child: BlocBuilder<NewestBooksCubit, NewestBooksState>(
        builder: (context, state) {
          if (state is NewestBooksSuccess) {
            return const NewestListView();
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
