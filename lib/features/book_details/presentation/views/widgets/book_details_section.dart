import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/book_model/book_model.dart';
import 'package:flutter/material.dart';

import '../../../../home/presentation/views/widgets/book_rating.dart';
import '../../../../home/presentation/views/widgets/custom_book_image.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key, required this.book});

  final BookModel book;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .18),
          child: CustomBookImage(
            imageUrl: book.volumeInfo.imageLinks.thumbnail,
          ),
        ),
        const SizedBox(height: 32),
        Text(
          book.volumeInfo.title!,
          style: Styles.textLarge,
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 9),
        Text(book.volumeInfo.authors![0],
            style: Styles.textSmall.copyWith(
              color: Colors.white.withOpacity(0.7),
            )),
        const SizedBox(height: 10),
        BookRating(
          rating: book.volumeInfo.averageRating ?? 0,
          count: book.volumeInfo.ratingsCount ?? 0,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(height: 30),
      ],
    );
  }
}
