import 'package:bookly/core/utils/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SlidingLogo extends StatelessWidget {
  const SlidingLogo({
    super.key,
    required this.slidingAnimation,
  });

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slidingAnimation,
        builder: (context, _) {
          return SlideTransition(
            position: slidingAnimation,
            child: SvgPicture.asset(
              Assets.imagesLogo,
              width: 300,
            ),
          );
        });
  }
}
