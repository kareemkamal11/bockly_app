import 'package:bookly_app/features/home/data/models/bookmodel/bookmodel.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'featuredbooks_state.dart';

class FeaturedbooksCubit extends Cubit<FeaturedbooksState> {
  FeaturedbooksCubit(this.homeRepo) : super(FeaturedbooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedbooksLoading());
    var result = await homeRepo.fetchFeaturedBooks();

    result.fold(
      (failure) => emit(FeaturedbooksError(message: failure.message)),
      (books) => emit(FeaturedbooksSuccess(books: books)),
    );
  }
}

