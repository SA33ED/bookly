import 'package:bookly/core/utils/app_assets.dart';
import 'package:bookly/core/utils/app_constants.dart';
import 'package:bookly/core/utils/app_styles.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating_widget.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(
          '/bookDetailsView',
          extra: book,
        );
      },
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            book.volumeInfo!.imageLinks != null
                ? CustomBookImage(
                    imageUrl: book.volumeInfo!.imageLinks!.thumbnail!)
                : AspectRatio(
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
            const SizedBox(width: 30),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text(
                      book.volumeInfo!.title!,
                      style: Styles.textstyle20
                          .copyWith(fontFamily: kGtsectrafine),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(height: 3),
                  Text(
                    book.volumeInfo!.authors![0],
                    style: Styles.textstyle14.copyWith(
                      color: Colors.white70,
                    ),
                  ),
                  const SizedBox(height: 3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Free",
                        style: Styles.textstyle20.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      BookRatingWidget(
                        rating: book.volumeInfo!.averageRating ?? 0,
                        count: book.volumeInfo!.ratingsCount ?? 0,
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
