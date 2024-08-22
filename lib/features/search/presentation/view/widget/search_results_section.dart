import 'package:bookly/core/utils/style_manager.dart';
import 'package:flutter/material.dart';

class SearchResultsSection extends StatelessWidget {
  const SearchResultsSection({
    super.key,
    required this.height,
    required this.widgetView,
    required this.tilte,
  });

  final double height;
  final Widget widgetView;
  final String tilte;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            tilte,
            style: StyleManager.textStyleBold16,
          ),
        ),
        const SizedBox(height: 20),
        SizedBox(
          height: height,
          child: ListView.builder(
            itemCount: 1,
            padding: EdgeInsets.zero,
            itemBuilder: (itemContext, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: widgetView,
              );
            },
          ),
        ),
      ],
    );
  }
}
