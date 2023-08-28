import 'package:bookly/core/utils/app_styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating_widget.dart';
import 'package:bookly/features/home/presentation/views/widgets/books_actions.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.24),
          child: const CustomBookImage(),
        ),
        const SizedBox(height: 30),
        const Text("The Jungle Book", style: Styles.textstyle30),
        const SizedBox(height: 6),
        Text("Rudyard Kilpling",
            style: Styles.textstyle18.copyWith(
                color: Colors.white70,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w500)),
        const SizedBox(height: 14),
        const BookRatingWidget(mainAxisAlignment: MainAxisAlignment.center),
        const SizedBox(height: 37),
        const BooksActions(),
      ],
    );
  }
}
