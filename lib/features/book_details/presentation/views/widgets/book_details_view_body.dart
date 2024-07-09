import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/book_details/presentation/views/widgets/book_details_buttons.dart';
import 'package:bookly_app/features/book_details/presentation/views/widgets/similar_book_list.dart';
import 'package:flutter/material.dart';

import 'book_details_section.dart';
import 'custom_details_appbar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const CustomDetailsAppBar(),
                      const BooksDetailsSection(),
                      const BookDetailsButtons(),
                      const Expanded(child: SizedBox(height: 30)),
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
              const SizedBox(height: 15),
              const SimilarBooksList()
            ],
          ),
        )
      ],
    );
  }
}
