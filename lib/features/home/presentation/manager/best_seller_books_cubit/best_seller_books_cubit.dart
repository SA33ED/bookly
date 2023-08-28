import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/presentation/manager/best_seller_books_cubit/best_seller_books_state.dart';

class BestSellerBooksCubit extends Cubit<BestSellerBooksState> {
  BestSellerBooksCubit() : super(BestSellerBooksInitial());
}
