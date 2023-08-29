
sealed class SearchState {
  const SearchState();
}

final class SearchInitial extends SearchState {}

final class SearchLoading extends SearchState {}

final class SearchFailure extends SearchState {
  final String errMessage;

  const SearchFailure(this.errMessage);
}

final class SearchSuccess extends SearchState {


}
