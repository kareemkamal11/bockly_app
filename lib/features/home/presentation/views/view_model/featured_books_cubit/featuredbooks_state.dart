part of 'featuredbooks_cubit.dart';

abstract class FeaturedbooksState extends Equatable {
  const FeaturedbooksState();

  @override
  List<Object> get props => [];
}

class FeaturedbooksInitial extends FeaturedbooksState {}

class FeaturedbooksLoading extends FeaturedbooksState {}

class FeaturedbooksError extends FeaturedbooksState {
  final String message;

  const FeaturedbooksError({required this.message});
}

class FeaturedbooksSuccess extends FeaturedbooksState {
  final List<BookModel> books;

  const FeaturedbooksSuccess({required this.books});
}
