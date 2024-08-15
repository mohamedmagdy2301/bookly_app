import 'package:bookly_app/core/assets/assets_manager.dart';
import 'package:bookly_app/features/home/ui/widgets/best_seller_book_price.dart';
import 'package:bookly_app/features/home/ui/widgets/best_seller_book_rating.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
