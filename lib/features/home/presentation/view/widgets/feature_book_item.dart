import 'package:bookly_app/features/home/data/model/books_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class FeatureBookItem extends StatelessWidget {
  const FeatureBookItem(
      {super.key, required this.aspectRatio, required this.bookModel});
  final double aspectRatio;
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return bookModel.volumeInfo?.imageLinks?.thumbnail != null
        ? AspectRatio(
            aspectRatio: aspectRatio,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: CachedNetworkImage(
                fit: BoxFit.fill,
                imageUrl: bookModel.volumeInfo!.imageLinks!.thumbnail!,
              ),
            ),
          )
        : const SizedBox();
  }
}
