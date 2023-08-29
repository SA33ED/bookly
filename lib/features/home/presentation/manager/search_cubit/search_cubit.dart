import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:bookly/features/home/presentation/manager/search_cubit/search_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SerachCubit extends Cubit<SearchState> {
  SerachCubit(this.homeRepo) : super(SearchInitial());
  final HomeRepo homeRepo;

  //!Search Method
  Future<void> sreachByTitle({required String key}) async {
    emit(SearchLoading());
    var result = await homeRepo.searchByTitle(key: key);
    result.fold(
      (failuer) {
        emit(SearchFailure(failuer.errMessage));
      },
      (books) {
        emit(SearchSuccess(books));
      },
    );
  }
}
