import 'package:bookly_app/core/utils/colors_manager.dart';
import 'package:bookly_app/core/widgets/custom_text_feild.dart';
import 'package:flutter/cupertino.dart';

class SearchTextFeildSection extends StatelessWidget {
  const SearchTextFeildSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomTextFeild(
      labelText: 'Search',
      suffixIcon: Icon(
        CupertinoIcons.search,
        color: ColorsManager.kGrey,
      ),
    );
  }
}
