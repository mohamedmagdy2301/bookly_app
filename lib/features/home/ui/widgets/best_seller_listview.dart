import 'package:bookly_app/core/routers/routers_manager.dart';
import 'package:bookly_app/features/home/ui/widgets/best_seller_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: ListView.builder(
        itemCount: 10,
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (itemContext, index) {
          return GestureDetector(
              onTap: () {
                GoRouter.of(context).push(RoutersManager.kSearchScreen);
              },
              child: const BestSellerItem());
        },
      ),
    );
  }
}
