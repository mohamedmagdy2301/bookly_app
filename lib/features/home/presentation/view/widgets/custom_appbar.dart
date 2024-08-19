import 'package:bookly_app/core/routers/routers_manager.dart';
import 'package:bookly_app/core/utils/assets_manager.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
                GoRouter.of(context).push(RoutersManager.kSearchScreen);
              },
              icon: const Icon(Icons.search)),
        ],
      ),
    );
  }
}
