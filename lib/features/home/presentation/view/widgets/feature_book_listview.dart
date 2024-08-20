import 'package:bookly_app/core/routers/routers_manager.dart';
import 'package:bookly_app/features/home/data/model/books_model.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/feature_book_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FeatureBooksListView extends StatelessWidget {
  const FeatureBooksListView({super.key, required this.featureBooksList});
  final List<BookModel> featureBooksList;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20),
      height: MediaQuery.of(context).size.height * 0.274,
      child: ListView.builder(
        itemCount: featureBooksList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (itemContext, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 10),
            child: GestureDetector(
              onTap: () {
                GoRouter.of(context).push(
                  RoutersManager.kDetailsScreen,
                  extra: featureBooksList[index],
                );
              },
              child: FeatureBookItem(
                aspectRatio: 2.7 / 4,
                bookModel: featureBooksList[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
