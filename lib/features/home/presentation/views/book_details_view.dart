import 'package:bookly/features/home/presentation/views/widgets/book_details_view_body.dart';
import 'package:flutter/material.dart';

class BookDetailesView extends StatelessWidget {
  const BookDetailesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BookDetailsViewBody(),
    );
  }
}
