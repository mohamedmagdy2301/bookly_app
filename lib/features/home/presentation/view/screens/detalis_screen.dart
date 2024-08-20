import 'package:bookly_app/features/home/data/model/books_model.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/detalis_book_app_bar.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/secion_details_book.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/section_similar_books_details.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.bookModel});
  final BookModel bookModel;

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
                  SecionDetailsBook(bookModel: bookModel),
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
