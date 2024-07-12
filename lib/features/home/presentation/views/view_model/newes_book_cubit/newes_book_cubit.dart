import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/models/bookmodel/bookmodel.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'newes_book_state.dart';

class NewesBookListCubit extends Cubit<NewesBookListState> {
  NewesBookListCubit(this.homeRepo) : super(NewesBookListInitial());

  final HomeRepo homeRepo;

  Future<void> fetchNewesBooks() async {
    emit(NewesBookListLoading());
    var result = await homeRepo.fetchNewsetBooks();

    result.fold(
      (failure) => emit(NewesBookListError(message: failure.message)),
      (books) => emit(NewesBookListSuccess(books: books)),
    );
  }
}
