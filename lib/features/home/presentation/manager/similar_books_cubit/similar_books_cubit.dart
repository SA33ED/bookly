
import 'package:bookly/features/home/presentation/manager/similar_books_cubit/similar_books_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit() : super(SimilarBooksInitial());
}
