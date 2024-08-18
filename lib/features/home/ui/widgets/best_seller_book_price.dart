import 'package:bookly_app/core/utils/style_manager.dart';
import 'package:flutter/material.dart';

class BookPrice extends StatelessWidget {
  const BookPrice({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      '19.99 €',
      style: StyleManager.textStyleBold16,
    );
  }
}
