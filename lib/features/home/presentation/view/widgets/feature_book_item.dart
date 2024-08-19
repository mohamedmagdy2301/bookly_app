import 'package:bookly_app/features/home/data/model/books_model.dart';
import 'package:flutter/material.dart';

class FeatureBookItem extends StatelessWidget {
  const FeatureBookItem({super.key, required this.aspectRatio, this.bookModel});
  final double aspectRatio;
  final BookModel? bookModel;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: aspectRatio,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: NetworkImage(
              bookModel?.volumeInfo?.imageLinks?.thumbnail ??
                  "https://th.bing.com/th/id/OIP.F4eiZn0Wjgp4EFtocph2BAHaFj?rs=1&pid=ImgDetMain",
            ),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
