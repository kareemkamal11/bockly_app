import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/widget/error_widget.dart';
import 'package:bookly_app/core/utils/widget/loadin_indicator.dart';
import 'package:bookly_app/features/book_details/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../home/presentation/views/widgets/custom_book_image.dart';

class SimilarBooksList extends StatelessWidget {
  const SimilarBooksList({super.key});


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksError) {
          return WidgetError(messageError: state.message);
        }
        if (state is SimilarBooksSuccess) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 5),
            child: SizedBox(
              height: Constants.maxHeight(context) * 0.16,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: state.books.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: CustomBookImage(
                      imageUrl:
                          state.books[index].volumeInfo.imageLinks.thumbnail,
                    ),
                  );
                },
              ),
            ),
          );
        }
        return const LoadinIndicator();
      },
    );
  }
}
