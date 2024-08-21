import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.borderRadius,
    this.backgroundColorButton,
    required this.tilteButton,
    required this.textStyleButton,
    this.onTap,
  });
  final BorderRadiusGeometry? borderRadius;
  final Color? backgroundColorButton;
  final String tilteButton;
  final TextStyle textStyleButton;

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 130,
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: 13),
        decoration: BoxDecoration(
            borderRadius: borderRadius ?? BorderRadius.circular(10),
            color: backgroundColorButton ?? Colors.white),
        child: Text(tilteButton, style: textStyleButton),
      ),
    );
  }
}
