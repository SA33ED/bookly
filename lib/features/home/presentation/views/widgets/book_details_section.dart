import 'package:bookly/core/utils/app_assets.dart';
import 'package:bookly/core/utils/app_styles.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating_widget.dart';
import 'package:bookly/features/home/presentation/views/widgets/books_actions.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        book.volumeInfo!.imageLinks != null
            ? Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.24),
                child: CustomBookImage(
                  imageUrl: book.volumeInfo!.imageLinks!.thumbnail!,
                ),
              )
            : SizedBox(
                height: 250,
                child: AspectRatio(
                  aspectRatio: 2.7 / 4,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      image: const DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(Assets.imagesBook),
                      ),
                    ),
                  ),
                ),
              ),
        const SizedBox(height: 30),
        Text(
          book.volumeInfo!.title!,
          style: Styles.textstyle30,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 6),
        Text(book.volumeInfo!.authors![0],
            style: Styles.textstyle18.copyWith(
                color: Colors.white70,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w500)),
        const SizedBox(height: 14),
        BookRatingWidget(
          mainAxisAlignment: MainAxisAlignment.center,
          rating: book.volumeInfo!.averageRating ?? 0,
          count: book.volumeInfo!.ratingsCount ?? 0,
        ),
        const SizedBox(height: 37),
        const BooksActions(),
      ],
    );
  }
}
