import 'package:bookly_app/core/utils/style_manager.dart';
import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:bookly_app/features/home/ui/widgets/best_seller_book_rating.dart';
import 'package:bookly_app/features/home/ui/widgets/feature_book_item.dart';
import 'package:flutter/material.dart';

class SecionDetailsBook extends StatelessWidget {
  const SecionDetailsBook({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: width * 0.21, vertical: height * 0.02),
          child: const FeatureBookItem(
            aspectRatio: 3 / 4,
          ),
        ),
        const SizedBox(height: 5),
        const Text("The Jungle Book", style: StyleManager.textStyle30),
        Text("J.K. Rowling", style: StyleManager.textStyleMedium18),
        const SizedBox(height: 14),
        const BookRating(),
        const SizedBox(height: 26),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(
              tilteButton: "19.99 €",
              textStyleButton:
                  StyleManager.textStyleBold16.copyWith(color: Colors.black),
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(16),
                topLeft: Radius.circular(16),
              ),
            ),
            CustomButton(
              tilteButton: "Free preview",
              textStyleButton: StyleManager.textStyleBold16,
              backgroundColorButton: const Color.fromARGB(255, 254, 126, 71),
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
