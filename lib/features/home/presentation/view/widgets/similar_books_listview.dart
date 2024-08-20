import 'package:bookly_app/features/home/presentation/view/widgets/feature_book_item.dart';
import 'package:flutter/material.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      scrollDirection: Axis.horizontal,
      itemBuilder: (itemContext, index) {
        return const Padding(
          padding: EdgeInsets.only(right: 10),
          child: FeatureBookItem(
            aspectRatio: 2.7 / 4,
          ),
        );
      },
    );
  }
}
