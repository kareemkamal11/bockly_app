
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xFFEFAE00),
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
          ),
        ),
      ],
    );
  }
}
