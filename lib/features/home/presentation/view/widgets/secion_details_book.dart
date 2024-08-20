import 'package:bookly_app/core/utils/style_manager.dart';
import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:bookly_app/features/home/data/model/books_model.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/feature_book_item.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/newest_book_rating.dart';
import 'package:flutter/material.dart';

class SecionDetailsBook extends StatelessWidget {
  const SecionDetailsBook({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: width * 0.21, vertical: height * 0.02),
          child: FeatureBookItem(
            aspectRatio: 3 / 4,
            bookModel: bookModel,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          bookModel.volumeInfo?.title ?? " No Title",
          style: StyleManager.textStyle30,
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
        ),
        Text(
          bookModel.volumeInfo?.authors?[0] ?? " No Author",
          style: StyleManager.textStyleMedium18,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 14),
        BookRating(bookModel: bookModel),
        const SizedBox(height: 26),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(
              tilteButton: bookModel.saleInfo!.listPrice?.amount == null
                  ? 'Free'
                  : "${bookModel.saleInfo!.listPrice!.amount} €",
              textStyleButton:
                  StyleManager.textStyleBold16.copyWith(color: Colors.black),
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(16),
                topLeft: Radius.circular(16),
              ),
            ),
            CustomButton(
              tilteButton: "Free preview",
              textStyleButton: StyleManager.textStyleBold16,
              backgroundColorButton: const Color.fromARGB(255, 254, 126, 71),
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
