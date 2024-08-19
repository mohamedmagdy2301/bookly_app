import 'package:bookly_app/core/utils/style_manager.dart';
import 'package:flutter/cupertino.dart';

class CustomFailureMessage extends StatelessWidget {
  const CustomFailureMessage({super.key, required this.errorMessage});
  final String errorMessage;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Icon(
            CupertinoIcons.xmark_circle,
            size: 100,
            color: Color.fromARGB(169, 76, 76, 76),
          ),
          Text(
            errorMessage,
            style: StyleManager.textStyleMedium18.copyWith(
              color: const Color.fromARGB(186, 141, 141, 141),
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
