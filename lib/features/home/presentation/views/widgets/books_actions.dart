import 'package:bookly/core/functions/launch_url.dart';
import 'package:bookly/core/widgets/custom_button.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

class BooksActions extends StatelessWidget {
  const BooksActions({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          const Expanded(
            child: CustomButton(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
              text: "Free",
              textColor: Colors.black,
              backgroundColor: Colors.white,
            ),
          ),
          Expanded(
            child: CustomButton(
              onTap: () async {
                launchCustomUrl(context, book.volumeInfo!.previewLink);
              },
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
              text: getText(book),
              textColor: Colors.white,
              backgroundColor: const Color(0xffEF8262),
            ),
          ),
        ],
      ),
    );
  }

  String getText(BookModel book) {
    if (book.volumeInfo!.previewLink == null) {
      return "Not Avaliable";
    } else {
      return "Free Preview";
    }
  }
}
