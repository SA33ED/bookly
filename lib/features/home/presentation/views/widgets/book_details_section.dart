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
          child: const CustomBookImage(
            imageUrl:
                "https://images.ctfassets.net/hrltx12pl8hq/3j5RylRv1ZdswxcBaMi0y7/b84fa97296bd2350db6ea194c0dce7db/Music_Icon.jpg",
          ),
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
        const BookRatingWidget(
          mainAxisAlignment: MainAxisAlignment.center,
          rating: 5,
          count: 6,
        ),
        const SizedBox(height: 37),
        const BooksActions(),
      ],
    );
  }
}
