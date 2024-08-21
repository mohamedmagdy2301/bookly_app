import 'package:bookly/core/utils/style_manager.dart';
import 'package:flutter/material.dart';

class CustomNewestTitle extends StatelessWidget {
  const CustomNewestTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Text('Newest Books', style: StyleManager.textStyleSemiBold18),
    );
  }
}
