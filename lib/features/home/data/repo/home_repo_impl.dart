import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/core/model/books_model.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/features/home/data/repo/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;
  HomeRepoImpl(this.apiService);
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks(category) async {
    try {
      var data = await apiService.get(
          "volumes?Filtering=free-ebooks&Sorting=newest&q=intitle:$category");
      List<BookModel> booksList = [];
      for (var items in data["items"]) {
        booksList.add(BookModel.fromJson(items));
      }
      return right(booksList);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var data = await apiService
          .get("volumes?Filtering=free-ebooks&q=subject:science");
      List<BookModel> booksList = [];
      for (var items in data["items"]) {
        booksList.add(BookModel.fromJson(items));
      }
      return right(booksList);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks(category) async {
    try {
      var data = await apiService
          .get("volumes?Filtering=free-ebooks&Sorting=relevance&q=$category");
      List<BookModel> booksList = [];
      for (var items in data["items"]) {
        booksList.add(BookModel.fromJson(items));
      }
      return right(booksList);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }
}
