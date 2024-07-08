import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating(
      {super.key, this.mainAxisAlignment = MainAxisAlignment.start});

  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xFFFFDD4F),
          size: 19,
        ),
        const SizedBox(width: 6.3),
        const Text('4.8', style: Styles.textSmall),
        const SizedBox(width: 5),
        Text(
          '(2390)',
          style: Styles.textSmall.copyWith(
            fontSize: 14,
            fontWeight: FontWeight.w300,
            color: Colors.white.withOpacity(0.5),
          ),
        ),
      ],
    );
  }
}
