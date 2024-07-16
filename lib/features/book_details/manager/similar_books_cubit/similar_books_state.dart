part of 'similar_books_cubit.dart';

abstract class SimilarBooksState extends Equatable {
  const SimilarBooksState();

  @override
  List<Object> get props => [];
}

class SimilarBooksInitial extends SimilarBooksState {}

class SimilarBooksLoading extends SimilarBooksState {}

class SimilarBooksError extends SimilarBooksState {
  final String message;

  const SimilarBooksError(this.message);

  @override
  List<Object> get props => [message];
}

// success
class SimilarBooksSuccess extends SimilarBooksState {
  final List<BookModel> books;

  const SimilarBooksSuccess(this.books);

  @override
  List<Object> get props => [books];
}


