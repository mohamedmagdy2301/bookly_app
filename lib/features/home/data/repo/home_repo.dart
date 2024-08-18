import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/features/home/data/model/books_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BooksModel>>> fetchFeaturedBooks();

  Future<Either<Failure, List<BooksModel>>> fetchBestSellerBooks();
}