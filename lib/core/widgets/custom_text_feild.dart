import 'package:bookly_app/core/utils/colors_manager.dart';
import 'package:flutter/material.dart';

class CustomTextFeild extends StatelessWidget {
  const CustomTextFeild({
    super.key,
    required this.suffixIcon,
    required this.labelText,
  });
  final Icon suffixIcon;
  final String labelText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: customOutlineInputBorder(),
        enabledBorder: customOutlineInputBorder(),
        focusedBorder: customOutlineInputBorder(),
        suffixIcon: suffixIcon,
        labelText: 'Search Book',
        labelStyle: TextStyle(
          color: ColorsManager.kPrimaryColorGrey,
        ),
      ),
    );
  }

  OutlineInputBorder customOutlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      borderSide: BorderSide(color: ColorsManager.kPrimaryColorGrey),
    );
  }
}
