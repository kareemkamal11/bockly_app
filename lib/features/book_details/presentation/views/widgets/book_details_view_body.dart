import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/book_details/presentation/views/widgets/book_details_buttons.dart';
import 'package:bookly_app/features/book_details/presentation/views/widgets/similar_book_list.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

import 'custom_details_appbar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CustomDetailsAppBar(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * .18),
                child: const CustomBookImage(),
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
                mainAxisAlignment: MainAxisAlignment.center,
              ),
              const BookDetailsButtons(),
               Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'You can also like',
                  style: Styles.textSmall.copyWith(
                    fontWeight: FontWeight.w500
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 15),
        const SimilarBooksList()
      ],
    );
  }
}

