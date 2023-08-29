import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:bookly/features/home/presentation/manager/similar_books_cubit/similar_books_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitial());
  HomeRepo homeRepo;

  Future<void> fetchSimilarBooks({required String category}) async {
    emit(SimilarBooksLoading());
    var result = await homeRepo.fetchSimilarBooks(category: category);
    result.fold(
      (failuer) {
        emit(SimilarBooksFailure(failuer.errMessage));
      },
      (books) {
        emit(SimilarBooksSuccess(books));
      },
    );  
  }
}
