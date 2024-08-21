import 'package:bookly_app/core/widgets/custom_circular_progress_loading.dart';
import 'package:bookly_app/core/widgets/custom_failure_message.dart';
import 'package:bookly_app/features/home/presentation/view%20model/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/newest_listview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BuilderNewestBooks extends StatefulWidget {
  const BuilderNewestBooks({super.key, required this.category});
  final String category;

  @override
  State<BuilderNewestBooks> createState() => _BuilderNewestBooksState();
}

class _BuilderNewestBooksState extends State<BuilderNewestBooks> {
  @override
  initState() {
    super.initState();
    BlocProvider.of<NewestBooksCubit>(context)
        .fatchNewestBooks(widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return NewestListView(
            newestBooksList: state.newestBooksList,
          );
        } else if (state is NewestBooksFailure) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.44,
            child: CustomFailureMessage(errorMessage: state.errorMessage),
          );
        } else {
          return SizedBox(
              height: MediaQuery.of(context).size.height * 0.44,
              child: const CustomCircularProgressLoading());
        }
      },
    );
  }
}
