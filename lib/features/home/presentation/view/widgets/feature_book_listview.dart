import 'package:bookly/core/model/books_model.dart';
import 'package:bookly/core/routers/routers_manager.dart';
import 'package:bookly/features/home/presentation/view/widgets/feature_book_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FeatureBooksListView extends StatefulWidget {
  const FeatureBooksListView({super.key, required this.featureBooksList});
  final List<BookModel> featureBooksList;

  @override
  State<FeatureBooksListView> createState() => _FeatureBooksListViewState();
}

class _FeatureBooksListViewState extends State<FeatureBooksListView> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.29,
      child: PageView.builder(
        padEnds: false,
        itemCount: widget.featureBooksList.length,
        controller: PageController(viewportFraction: 0.5),
        onPageChanged: (index) => setState(() => _index = index),
        scrollDirection: Axis.horizontal,
        itemBuilder: (itemContext, index) {
          return Container(
            color: Colors.transparent,
            child: AnimatedPadding(
              duration: const Duration(milliseconds: 300),
              curve: Curves.fastOutSlowIn,
              padding: EdgeInsets.all(_index == index ? 5 : 20),
              child: GestureDetector(
                onTap: () {
                  GoRouter.of(context).push(
                    RoutersManager.kDetailsScreen,
                    extra: widget.featureBooksList[index],
                  );
                },
                child: FeatureBookItem(
                  aspectRatio: 2.7 / 4,
                  bookModel: widget.featureBooksList[index],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
