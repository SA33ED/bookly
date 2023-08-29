import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/core/services/api_service.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpelementaion implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpelementaion(this.apiService);
  @override
//!fetch BestSeller Books
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks() async {
    return await getBooks(endpoint: "volumes?q=computer science");
  }

//!fetch Featured Books
  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    return await getBooks(
        endpoint: "volumes?Filtering=free-ebooks&q=subject:Programming");
  }
//!fetch Simmilar Books
  @override
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks(
      {required String category}) async {
    return await getBooks(
        endpoint:
            "volumes?Filtering=free-ebooks&Sorting=relevance&q=computer science");
  }

//!fetch Books method
  Future<Either<Failure, List<BookModel>>> getBooks(
      {required String endpoint}) async {
    try {
      Map data = await apiService.get(
        endpoint: endpoint,
      );
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }
}
