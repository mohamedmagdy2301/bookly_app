import 'package:bookly_app/core/utils/style_manager.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

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
        Text('4.8', style: StyleManager.textStyleMedium16),
        const SizedBox(width: 3),
        Text(' (2450)', style: StyleManager.textStyle14),
      ],
    );
  }
}
