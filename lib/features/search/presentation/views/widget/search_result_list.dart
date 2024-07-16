import 'package:flutter/material.dart';


class SearchResultList extends StatelessWidget {
  const SearchResultList({super.key,});


  @override
  Widget build(BuildContext context) {


    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) {
        return  Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Container(),
          // child: BookListItem(
          // ),
        );
      },
    );
  }
}
