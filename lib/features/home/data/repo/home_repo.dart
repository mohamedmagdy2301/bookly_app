import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/core/model/books_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks(category);
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks(category);
}
