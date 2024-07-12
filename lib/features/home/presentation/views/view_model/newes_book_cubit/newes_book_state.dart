part of 'newes_book_cubit.dart';

abstract class NewesBookListState extends Equatable {
  const NewesBookListState();

  @override
  List<Object> get props => [];
}

class NewesBookListInitial extends NewesBookListState {}

class NewesBookListLoading extends NewesBookListState {}

class NewesBookListError extends NewesBookListState {
  final String message;

  const NewesBookListError({required this.message});
}

class NewesBookListSuccess extends NewesBookListState {
  final List<BookModel> books;

  const NewesBookListSuccess({required this.books});
}
