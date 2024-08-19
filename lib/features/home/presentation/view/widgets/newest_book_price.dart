import 'package:bookly_app/core/utils/style_manager.dart';
import 'package:bookly_app/features/home/data/model/books_model.dart';
import 'package:flutter/material.dart';

class BookPrice extends StatelessWidget {
  const BookPrice({super.key, this.bookModel});
  final BookModel? bookModel;
  @override
  Widget build(BuildContext context) {
    return Text(
      bookModel!.saleInfo!.listPrice?.amount == null
          ? 'Free'
          : "${bookModel!.saleInfo!.listPrice!.amount} €",
      style: StyleManager.textStyleBold16,
    );
  }
}
