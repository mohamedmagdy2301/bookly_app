import 'package:bookly_app/features/home/ui/widgets/feature_book_item.dart';
import 'package:flutter/material.dart';

class FeatureBooksListView extends StatelessWidget {
  const FeatureBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20),
      height: MediaQuery.of(context).size.height * 0.274,
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
    );
  }
}
