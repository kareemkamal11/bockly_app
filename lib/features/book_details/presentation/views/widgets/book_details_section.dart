import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

import '../../../../home/presentation/views/widgets/book_rating.dart';
import '../../../../home/presentation/views/widgets/custom_book_image.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .18),
          child: const CustomBookImage(
            imageUrl:  'https://via.placeholder.com/150',
          ),
        ),
        const SizedBox(height: 32),
        const Text(
          'The Jungle Book',
          style: Styles.textLarge,
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
        ),
        const SizedBox(height: 9),
        Text('Rudyard Kipling',
            style: Styles.textSmall.copyWith(
              color: Colors.white.withOpacity(0.7),
            )),
        const SizedBox(height: 10),
        const BookRating(
          rating: 00,
          count: 00,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(height: 30),
      ],
    );
  }
}
