import 'package:bookly/core/model/books_model.dart';
import 'package:bookly/core/routers/routers_manager.dart';
import 'package:bookly/features/home/presentation/view/widgets/newest_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NewestListView extends StatelessWidget {
  const NewestListView({super.key, required this.newestBooksList});
  final List<BookModel> newestBooksList;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: ListView.builder(
        itemCount: 10,
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (itemContext, index) {
          return GestureDetector(
            onTap: () {
              GoRouter.of(context).push(RoutersManager.kDetailsScreen,
                  extra: newestBooksList[index]);
            },
            child: NewestItem(bookModel: newestBooksList[index]),
          );
        },
      ),
    );
  }
}
