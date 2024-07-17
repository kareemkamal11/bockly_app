import 'package:bookly_app/features/book_model/book_model.dart';
import 'package:flutter/material.dart';

import 'widget/search_view_body.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key, required this.book});

  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SearchViewBody(
          book: book,
        ),
      ),
    );
  }
}
