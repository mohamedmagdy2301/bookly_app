import 'package:bookly/core/widgets/tab_bar_build.dart';
import 'package:bookly/features/home/presentation/view/widgets/builder_feature_books.dart';
import 'package:bookly/features/home/presentation/view/widgets/builder_newest_books.dart';
import 'package:bookly/features/home/presentation/view/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        body: NestedScrollView(
          physics: const BouncingScrollPhysics(),
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              const SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomAppBar(),
                    SizedBox(height: 40),
                    BuilderFeatureBooks(),
                    SizedBox(height: 25),
                    TabBarBuild(),
                    SizedBox(height: 10),
                  ],
                ),
              ),
            ];
          },
          body: const TabBarView(
            children: [
              BuilderNewestBooks(category: 'Programming'),
              BuilderNewestBooks(category: 'Science'),
              BuilderNewestBooks(category: 'Health'),
              BuilderNewestBooks(category: 'History'),
              BuilderNewestBooks(category: 'Sports'),
              BuilderNewestBooks(category: 'Technology'),
            ],
          ),
        ),
      ),
    );
  }
}
