import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/features/home/data/model/books_model.dart';
import 'package:bookly_app/features/home/data/repo/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  ApiService apiService = ApiService();
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await apiService
          .get("volumes?Filtering=free-ebooks&Sorting=newest&q=programmer");
      List<BookModel> booksList = [];
      for (var items in data["items"]) {
        booksList.add(BookModel.fromJson(items));
      }
      // log(booksList[0].volumeInfo!.title.toString());
      return right(booksList);
    } catch (e) {
      if (e is DioException) {
        // log("XXXXXXXXXXXXXXXXXXXXXX");
        // log(ServerFailure.fromDioException(e).message);
        return left(ServerFailure.fromDioException(e));
      } else {
        // log(e.toString());
        return left(ServerFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var data = await apiService
          .get("volumes?Filtering=free-ebooks&Sorting=newest&q=programmer");
      List<BookModel> booksList = [];
      for (var items in data["items"]) {
        booksList.add(BookModel.fromJson(items));
      }
      // log(booksList[0].volumeInfo!.title.toString());
      return right(booksList);
    } catch (e) {
      if (e is DioException) {
        // log("XXXXXXXXXXXXXXXXXXXXXX");
        // log(ServerFailure.fromDioException(e).message);
        return left(ServerFailure.fromDioException(e));
      } else {
        // log(e.toString());
        return left(ServerFailure(e.toString()));
      }
    }
  }
}
