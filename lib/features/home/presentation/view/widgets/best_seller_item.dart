import 'package:bookly_app/core/utils/assets_manager.dart';
import 'package:bookly_app/core/utils/style_manager.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/best_seller_book_price.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/best_seller_book_rating.dart';
import 'package:flutter/material.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      height: MediaQuery.of(context).size.height * 0.133,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: const DecorationImage(
                  image: AssetImage(AssetsManager.test),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          const SizedBox(width: 30),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: const Text(
                    'Harry Potter and the Goblet of Fire',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: StyleManager.textStyle18,
                  ),
                ),
                Text(
                  'J.K. Rowling',
                  style: StyleManager.textStyleMedium14,
                ),
                const SizedBox(height: 1),
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
      ),
    );
  }
}
