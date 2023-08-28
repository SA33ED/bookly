import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:bookly/features/home/presentation/manager/featured_books_cubit/featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());
  HomeRepo homeRepo;

  Future<void> fetchFeatureBooks() async {
    emit(FeaturedBooksLoading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold(
      (failuer) {
        emit(FeaturedBooksFailure(failuer.errMessage));
      },
      (books) {
        emit(FeaturedBooksSuccess(books));
      },
    );
  }
}
