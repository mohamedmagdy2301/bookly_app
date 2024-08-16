import 'package:bookly_app/core/helper/assets_manager.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 50, left: 20, right: 20),
      child: Row(
        children: [
          Image(
            image: AssetImage(AssetsManager.logo),
            height: 16,
            width: 75,
          ),
          Spacer(),
          Icon(Icons.search),
        ],
      ),
    );
  }
}
