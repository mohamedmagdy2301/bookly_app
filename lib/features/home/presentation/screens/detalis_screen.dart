import 'package:bookly_app/features/home/presentation/view/widgets/detalis_book_app_bar.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/secion_details_book.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/section_similar_books_details.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  CustomAppBarDetalisScreen(),
                  SecionDetailsBook(),
                  Expanded(child: SizedBox()),
                  SectionSimilarBooksDetails(),
                  SizedBox(height: 30),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
