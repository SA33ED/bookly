
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';

class SimilarBooksDetails extends StatelessWidget {
  const SimilarBooksDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
            alignment: Alignment.centerLeft,
            child: Text("You can also like",
                style:
                    Styles.textstyle14.copyWith(fontWeight: FontWeight.w600))),
        const SizedBox(height: 16),
        const SimilarBooksListView(),
      ],
    );
  }
}
