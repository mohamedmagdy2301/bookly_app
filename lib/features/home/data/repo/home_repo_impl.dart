import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/features/home/data/model/books_model.dart';
import 'package:bookly_app/features/home/data/repo/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo {
  @override
  Future<Either<Failure, List<BooksModel>>> fetchBestSellerBooks() {
    // TODO: implement fetchBestSellerBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BooksModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}
