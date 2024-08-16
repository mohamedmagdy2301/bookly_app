import 'package:bookly_app/features/home/ui/widgets/best_seller_listview.dart';
import 'package:bookly_app/features/home/ui/widgets/custom_appbar.dart';
import 'package:bookly_app/features/home/ui/widgets/custom_bestseller_title.dart';
import 'package:bookly_app/features/home/ui/widgets/feature_book_listview.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 50, left: 20, right: 20),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: CustomAppBar()),
            SliverToBoxAdapter(child: SizedBox(height: 20)),
            SliverToBoxAdapter(child: FeatureBooksListView()),
            SliverToBoxAdapter(child: SizedBox(height: 50)),
            SliverToBoxAdapter(child: CustomBestSellerTitle()),
            SliverToBoxAdapter(child: SizedBox(height: 20)),
            SliverFillRemaining(child: BestSellerListView()),
            SliverToBoxAdapter(child: SizedBox(height: 50)),
          ],
        ),
      ),
    );
  }
}
