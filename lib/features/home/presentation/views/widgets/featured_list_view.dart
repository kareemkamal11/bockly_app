import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';

import 'featured_books_item.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Constants.maxHeight(context) / 3.9,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: FeaturedBooksItem(),
          );
        },
      ),
    );
  }
}
