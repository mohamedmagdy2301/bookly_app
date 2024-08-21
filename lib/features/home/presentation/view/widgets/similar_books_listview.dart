import 'package:bookly_app/features/home/data/model/books_model.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/feature_book_item.dart';
import 'package:flutter/material.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key, required this.similarBooksList});
  final List<BookModel> similarBooksList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: similarBooksList.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (itemContext, index) {
        return Padding(
          padding: const EdgeInsets.only(right: 10),
          child: FeatureBookItem(
            aspectRatio: 2.7 / 4,
            bookModel: similarBooksList[index],
          ),
        );
      },
    );
  }
}
