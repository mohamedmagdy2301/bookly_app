import 'package:bookly_app/features/home/presentation/view/widgets/best_seller_listview.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/custom_appbar.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/custom_bestseller_title.dart';
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
          SliverToBoxAdapter(child: CustomBestSellerTitle()),
          SliverToBoxAdapter(child: SizedBox(height: 10)),
          SliverToBoxAdapter(child: BestSellerListView()),
          SliverToBoxAdapter(child: SizedBox(height: 10)),
        ],
      ),
    );
  }
}
