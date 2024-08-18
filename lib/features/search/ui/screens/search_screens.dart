import 'package:bookly_app/features/search/ui/widget/search_results_section.dart';
import 'package:bookly_app/features/search/ui/widget/search_text_feild_secion.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: width * 0.07,
          vertical: height * 0.02,
        ),
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(child: SearchTextFeildSection()),
            SliverFillRemaining(
              hasScrollBody: false,
              child: SearchResultsSection(height: height),
            ),
          ],
        ),
      ),
    );
  }
}
