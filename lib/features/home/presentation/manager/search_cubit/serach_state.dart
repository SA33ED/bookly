import 'package:bookly/features/home/data/models/book_model/book_model.dart';

sealed class SerachState {
  const SerachState();
}

final class SerachInitial extends SerachState {}

final class SerachLoading extends SerachState {}

final class SerachFailure extends SerachState {
  final String errMessage;

  const SerachFailure(this.errMessage);
}

final class SerachSuccess extends SerachState {
  final List<BookModel> books;

  const SerachSuccess(this.books);
}
