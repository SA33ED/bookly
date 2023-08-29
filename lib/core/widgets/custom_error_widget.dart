import 'package:bookly/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({
    super.key,
    required this.errMessage,
    this.textColor = Colors.red,
    this.icon =  Icons.error_outline,
  });
  final String errMessage;
  final Color? textColor;
  final IconData? icon;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: textColor,
          ),
          const SizedBox(height: 10),
          Text(
            errMessage,
            style: Styles.textstyle18.copyWith(
              color: textColor,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
