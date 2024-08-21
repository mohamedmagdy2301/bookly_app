import 'package:bookly_app/features/home/data/model/books_model.dart';
import 'package:bookly_app/features/home/presentation/view%20model/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/detalis_book_app_bar.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/secion_details_book.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/section_similar_books_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  void initState() {
    BlocProvider.of<SimilarBooksCubit>(context).fetchSimilarBooks(
      widget.bookModel.volumeInfo?.categories?[0] ?? "Science",
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  const CustomAppBarDetalisScreen(),
                  SecionDetailsBook(bookModel: widget.bookModel),
                  const Expanded(child: SizedBox()),
                  const SectionSimilarBooksDetails(),
                  const SizedBox(height: 30),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
