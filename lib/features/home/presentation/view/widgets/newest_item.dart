import 'package:bookly_app/core/utils/assets_manager.dart';
import 'package:bookly_app/core/utils/style_manager.dart';
import 'package:bookly_app/features/home/data/model/books_model.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/newest_book_price.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/newest_book_rating.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class NewestItem extends StatelessWidget {
  const NewestItem({super.key, this.bookModel});
  final BookModel? bookModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      height: MediaQuery.of(context).size.height * 0.133,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.7 / 4,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: CachedNetworkImage(
                fit: BoxFit.fill,
                imageUrl: bookModel?.volumeInfo?.imageLinks?.thumbnail ??
                    AssetsManager.kNoImage,
              ),
            ),
          ),
          const SizedBox(width: 30),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Text(
                    bookModel?.volumeInfo?.title ?? 'No Title',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: StyleManager.textStyle18,
                  ),
                ),
                Text(
                  bookModel?.volumeInfo?.authors?[0] ?? 'No Author',
                  style: StyleManager.textStyleMedium14,
                ),
                const SizedBox(height: 1),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BookPrice(bookModel: bookModel),
                    BookRating(bookModel: bookModel),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
