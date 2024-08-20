import 'package:bookly_app/core/utils/style_manager.dart';
import 'package:flutter/material.dart';

class SearchResultsSection extends StatelessWidget {
  const SearchResultsSection({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        Text(
          'Search Results',
          style: StyleManager.textStyleBold16,
        ),
        const SizedBox(height: 20),
        SizedBox(
          height: height,
          child: ListView.builder(
            itemCount: 1,
            padding: EdgeInsets.zero,
            itemBuilder: (itemContext, index) {
              return Text("search screen");

              // return const NewestItem();
            },
          ),
        ),
      ],
    );
  }
}
