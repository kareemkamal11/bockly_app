import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'custom_search_text_field.dart';
import 'search_result_list.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key, required this.book});

  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchTextField(),
          SizedBox(height: 16),
          Text('Search results', style: Styles.textSmall),
          SizedBox(height: 16),
          Expanded(
            child: SearchResultList(),
          )
        ],
      ),
    );
  }
}
