import 'package:bookly/core/utils/colors_manager.dart';
import 'package:bookly/core/widgets/custom_text_feild.dart';
import 'package:bookly/features/search/presentation/view%20model/search_books_cubit/search_books_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchTextFeildSection extends StatelessWidget {
  const SearchTextFeildSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 3),
      child: CustomTextFeild(
        labelText: 'Search',
        suffixIcon: Icon(
          CupertinoIcons.search,
          color: ColorsManager.kGrey,
        ),
        onSubmitted: (value) {
          if (value != "") {
            BlocProvider.of<SearchBooksCubit>(context).fetchSearchBooks(value);
          }
        },
      ),
    );
  }
}
