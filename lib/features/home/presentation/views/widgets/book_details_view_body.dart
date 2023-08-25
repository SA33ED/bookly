import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating_widget.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 10),
          const CustomBookDetailsAppBar(),
          const SizedBox(height: 33.2),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.24),
            child: const CustomBookImage(),
          ),
          const SizedBox(height: 40),
          const Text(
            "The Jungle Book",
            style: Styles.textstyle30,
          ),
          const SizedBox(height: 6),
          Text(
            "Rudyard Kilpling",
            style: Styles.textstyle18.copyWith(
                color: Colors.white70,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 14),
          const BookRatingWidget(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ],
      ),
    );
  }
}
