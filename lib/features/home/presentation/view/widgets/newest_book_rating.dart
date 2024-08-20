import 'package:bookly_app/core/utils/style_manager.dart';
import 'package:bookly_app/features/home/data/model/books_model.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.star,
          color: Colors.amber,
          size: 19,
        ),
        const SizedBox(width: 4),
        Text(
          "${bookModel.volumeInfo?.averageRating ?? 0.0}",
          style: StyleManager.textStyleMedium16,
        ),
        const SizedBox(width: 3),
        Text(
          '(${bookModel.volumeInfo?.ratingsCount ?? 0})',
          style: StyleManager.textStyle14,
        ),
      ],
    );
  }
}
