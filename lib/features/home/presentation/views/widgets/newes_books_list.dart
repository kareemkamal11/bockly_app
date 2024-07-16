import 'package:bookly_app/core/utils/widget/loadin_indicator.dart';
import 'package:bookly_app/features/home/presentation/views/view_model/newes_book_cubit/newes_book_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'book_list_item.dart';

class NewesBooksList extends StatelessWidget {
  const NewesBooksList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewesBookListCubit, NewesBookListState>(
      builder: (context, state) {
        if (state is NewesBookListError) {
          return ErrorWidget(state.message);
        }
        if (state is NewesBookListSuccess) {
          return ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: BookListItem(
                  book: state.books[index],
                ),
              );
            },
          );
        }
        return const LoadinIndicator();
      },
    );
  }
}
