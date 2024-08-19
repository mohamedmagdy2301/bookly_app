import 'package:bookly_app/core/routers/routers_manager.dart';
import 'package:bookly_app/features/home/data/model/books_model.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/newest_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NewestListView extends StatelessWidget {
  const NewestListView({super.key, required this.newestBooksList});
  final List<BookModel> newestBooksList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (itemContext, index) {
        return GestureDetector(
          onTap: () {
            GoRouter.of(context).push(RoutersManager.kDetailsScreen);
          },
          child: NewestItem(bookModel: newestBooksList[index]),
        );
      },
    );
  }
}
