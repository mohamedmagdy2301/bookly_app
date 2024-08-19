import 'package:bookly_app/features/home/presentation/view/widgets/newest_listview.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/custom_appbar.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/custom_newest_title.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/feature_book_listview.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(child: CustomAppBar()),
          SliverToBoxAdapter(child: SizedBox(height: 40)),
          SliverToBoxAdapter(child: FeatureBooksListView()),
          SliverToBoxAdapter(child: SizedBox(height: 45)),
          SliverToBoxAdapter(child: CustomNewestTitle()),
          SliverToBoxAdapter(child: SizedBox(height: 10)),
          SliverToBoxAdapter(child: NewestListView()),
          SliverToBoxAdapter(child: SizedBox(height: 10)),
        ],
      ),
    );
  }
}
