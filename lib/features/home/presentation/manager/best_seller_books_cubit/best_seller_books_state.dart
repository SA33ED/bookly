import 'package:bookly/features/home/data/models/book_model/book_model.dart';

class BestSellerBooksState {
  const BestSellerBooksState();
}

final class BestSellerBooksInitial extends BestSellerBooksState {}

final class BestSellerBooksLoading extends BestSellerBooksState {}

final class BestSellerBooksFailure extends BestSellerBooksState {
  final String errMessage;
  const BestSellerBooksFailure(this.errMessage);
}

final class BestSellerBooksSuccess extends BestSellerBooksState {
  final List<BookModel> books;
  const BestSellerBooksSuccess(this.books);
}
