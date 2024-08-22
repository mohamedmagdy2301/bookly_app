import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppBarDetalisScreen extends StatelessWidget {
  const CustomAppBarDetalisScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(CupertinoIcons.xmark),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(CupertinoIcons.cart),
          ),
        ],
      ),
    );
  }
}
