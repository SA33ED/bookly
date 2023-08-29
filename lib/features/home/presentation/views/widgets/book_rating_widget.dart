import 'package:bookly/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRatingWidget extends StatelessWidget {
  const BookRatingWidget({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.rating,
    this.count,
  });
  final MainAxisAlignment mainAxisAlignment;
  final num? rating;
  final int? count;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
          size: 14,
        ),
        const SizedBox(width: 6.3),
        Text(
          "$rating",
          style: Styles.textstyle16,
        ),
        const SizedBox(width: 5),
        Text(
          "($count)",
          style: Styles.textstyle14.copyWith(color: Colors.white54),
        ),
      ],
    );
  }
}
