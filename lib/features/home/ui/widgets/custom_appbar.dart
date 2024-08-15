import 'package:bookly_app/core/assets/assets_manager.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Image(
          image: AssetImage(AssetsManager.logo),
          height: 16,
          width: 75,
        ),
        Spacer(),
        Icon(Icons.search),
      ],
    );
  }
}
