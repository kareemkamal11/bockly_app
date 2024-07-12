import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'newes_book_state.dart';

class NewesBookListCubit extends Cubit<NewesBookListState> {
  NewesBookListCubit() : super(NewesBookListInitial());

  
}
