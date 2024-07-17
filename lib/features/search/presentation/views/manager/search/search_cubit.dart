import 'package:bookly_app/features/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.homeRepo) : super(SearchInitial());

  final HomeRepo homeRepo;

  void searchBooks(String query) async {
    emit(SearchLoading());
    final result = await homeRepo.fetchSearchResults(query: query);
    result.fold(
      (failure) => emit(SearchError(failure.message)),
      (books) => emit(SearchSuccess(books)),
    );
  }
}
