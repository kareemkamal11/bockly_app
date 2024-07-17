import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/book_details/presentation/views/widgets/book_details_buttons.dart';
import 'package:bookly_app/features/book_details/presentation/views/widgets/similar_book_list.dart';
import 'package:bookly_app/features/book_model/book_model.dart';
import 'package:flutter/material.dart';

import 'book_details_section.dart';
import 'custom_details_appbar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.book});

  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: true,
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const CustomDetailsAppBar(),
                      BooksDetailsSection(
                        book: book,
                      ),
                      BookDetailsButtons(
                        book: book,
                      ),
                      const Expanded(child: SizedBox(height: 25)),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'You can also like',
                          style: Styles.textSmall
                              .copyWith(fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SimilarBooksList()
            ],
          ),
        )
      ],
    );
  }
}
