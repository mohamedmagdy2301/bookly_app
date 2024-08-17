import 'package:bookly_app/core/helper/style_manager.dart';
import 'package:bookly_app/features/home/ui/widgets/feature_book_item.dart';
import 'package:flutter/material.dart';

class SectionSimilarBooksDetails extends StatelessWidget {
  const SectionSimilarBooksDetails({super.key});

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
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.14,
          child: ListView.builder(
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            itemBuilder: (itemContext, index) {
              return const Padding(
                padding: EdgeInsets.only(right: 10),
                child: FeatureBookItem(
                  aspectRatio: 2.7 / 4,
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
