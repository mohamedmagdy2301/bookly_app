import 'package:bookly_app/core/utils/style_manager.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/builder_similar_books.dart';
import 'package:flutter/material.dart';

class SectionSimilarBooksDetails extends StatelessWidget {
  const SectionSimilarBooksDetails({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "You can also like",
          style: StyleManager.textStyleMedium14.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 20),
        const BuilderSimilarBooks(),
      ],
    );
  }
}
