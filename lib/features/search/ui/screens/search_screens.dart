import 'package:bookly_app/core/widgets/custom_text_feild.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: const CustomTextFeild(),
        ),
      ),
    );
  }
}
