import 'package:bookly_app/core/utils/style_manager.dart';
import 'package:flutter/material.dart';

class CustomBestSellerTitle extends StatelessWidget {
  const CustomBestSellerTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Text('Best Seller', style: StyleManager.textStyleSemiBold18),
    );
  }
}
