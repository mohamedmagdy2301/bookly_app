import 'package:bookly_app/core/assets/assets_manager.dart';
import 'package:bookly_app/features/home/ui/widgets/custom_appbar.dart';
import 'package:bookly_app/features/home/ui/widgets/custom_bestseller_title.dart';
import 'package:bookly_app/features/home/ui/widgets/feature_book_listview.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
            SliverToBoxAdapter(child: SizedBox(height: 40)),
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

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (itemContext, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: BestSellerItem(),
        );
      },
    );
  }
}

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 70,
          height: 105,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: const DecorationImage(
              image: AssetImage(AssetsManager.test),
              fit: BoxFit.fill,
            ),
          ),
        ),
        const SizedBox(width: 30),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: const Text(
                  'Harry Potter and the Goblet of Fire',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: "GT Sectra Fine Book",
                  ),
                ),
              ),
              const SizedBox(height: 4),
              Text(
                'J.K. Rowling',
                style: GoogleFonts.montserrat(
                  color: Colors.grey,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 4),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BookPrice(),
                  BookRating(),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class BookPrice extends StatelessWidget {
  const BookPrice({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      '19.99 €',
      style: GoogleFonts.montserrat(
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.star,
          color: Colors.amber,
          size: 19,
        ),
        const SizedBox(width: 4),
        Text(
          '4.8',
          style: GoogleFonts.montserrat(
            color: Colors.grey,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(width: 4),
        Text(
          '(2450)',
          style: GoogleFonts.montserrat(
            color: Colors.grey,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
