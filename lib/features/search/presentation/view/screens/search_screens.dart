import 'package:bookly/core/utils/colors_manager.dart';
import 'package:bookly/features/search/presentation/view/widget/bulider_saerch_books.dart';
import 'package:bookly/features/search/presentation/view/widget/search_text_feild_secion.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: SizedBox(height: 17),
          ),
          SliverAppBar(
            backgroundColor: Colors.transparent,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                CupertinoIcons.back,
                color: ColorsManager.kGrey,
                size: 30,
              ),
            ),
            actions: [
              SizedBox(width: width * .9, child: const SearchTextFeildSection())
            ],
          ),
          SliverToBoxAdapter(
            child: BuilderSearchBooks(height: height),
          ),
        ],
      ),
    );
  }
}
