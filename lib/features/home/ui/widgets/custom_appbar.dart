import 'dart:developer';

import 'package:bookly_app/core/utils/assets_manager.dart';
import 'package:bookly_app/features/home/data/repo/home_repo_impl.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
      child: Row(
        children: [
          const Image(
            image: AssetImage(AssetsManager.logo),
            height: 16,
            width: 75,
          ),
          const Spacer(),
          IconButton(
              onPressed: () {
                HomeRepoImpl().fetchBestSellerBooks();
                log("done--------------------------------------");
              },
              icon: const Icon(Icons.search)),
        ],
      ),
    );
  }
}
