import 'package:bookly/core/utils/colors_manager.dart';
import 'package:bookly/core/utils/style_manager.dart';
import 'package:bookly/core/widgets/custom_button.dart';
import 'package:bookly/features/home/data/model/books_model.dart';
import 'package:bookly/features/home/presentation/view/widgets/feature_book_item.dart';
import 'package:bookly/features/home/presentation/view/widgets/newest_book_rating.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SecionDetailsBook extends StatelessWidget {
  const SecionDetailsBook({super.key, required this.bookModel});
  final BookModel bookModel;

  Future<void> _launchInAppWithBrowserOptions(Uri url) async {
    await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
      webViewConfiguration: const WebViewConfiguration(enableJavaScript: true),
    );
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: width * 0.21, vertical: height * 0.02),
          child: FeatureBookItem(
            aspectRatio: 3 / 4,
            bookModel: bookModel,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          bookModel.volumeInfo?.title ?? " No Title",
          style: StyleManager.textStyle30,
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
        ),
        Text(
          bookModel.volumeInfo?.authors?[0] ?? " No Author",
          style: StyleManager.textStyleMedium18,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 14),
        BookRating(bookModel: bookModel),
        const SizedBox(height: 18),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(
              onTap: () {
                _launchInAppWithBrowserOptions(
                  Uri.parse(
                    bookModel.accessInfo?.pdf?.acsTokenLink ??
                        "https://play.google.com/books/",
                  ),
                );
              },
              tilteButton: 'PDF',
              icon: CupertinoIcons.arrow_down_to_line_alt,
              iconColor: Colors.black,
              textStyleButton:
                  StyleManager.textStyleBold16.copyWith(color: Colors.black),
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(16),
                topLeft: Radius.circular(16),
              ),
            ),
            CustomButton(
              onTap: () {
                _launchInAppWithBrowserOptions(
                  Uri.parse(
                    bookModel.volumeInfo?.previewLink ??
                        "https://play.google.com/books/",
                  ),
                );
              },
              tilteButton: "Preview",
              icon: CupertinoIcons.book,
              textStyleButton: StyleManager.textStyleBold16,
              backgroundColorButton: ColorsManager.kOrange,
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
