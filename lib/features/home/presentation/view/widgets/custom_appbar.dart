import 'package:bookly/core/routers/routers_manager.dart';
import 'package:bookly/core/utils/colors_manager.dart';
import 'package:flutter/cupertino.dart';
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
          Text(
            "BOOKLY",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 26,
              fontFamily: "Matemasie",
              letterSpacing: 4,
              color: ColorsManager.kLightGrey,
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {
              GoRouter.of(context).push(RoutersManager.kSearchScreen);
            },
            icon: Icon(CupertinoIcons.search, color: ColorsManager.kLightGrey),
          ),
        ],
      ),
    );
  }
}
