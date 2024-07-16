
import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/widget/loadin_indicator.dart';
import 'package:bookly_app/features/home/presentation/views/view_model/featured_books_cubit/featuredbooks_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom_book_image.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedbooksCubit, FeaturedBooksState>(
        builder: (context, state) {
      if (state is FeaturedBooksError) {
        return ErrorWidget(state.message);
      } else if (state is FeaturedBooksSuccess) {
        return SizedBox(
          height: Constants.maxHeight(context) / 3.9,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: SizedBox(
                  width: Constants.maxWidth(context) / 2.8,
                  child: CustomBookImage(
                    imageUrl:
                        state.books[index].volumeInfo.imageLinks.thumbnail,
                  ),
                ),
              );
            },
          ),
        );
      } else {
        return const Center(child: LoadinIndicator());
      }
    });
  }
}
