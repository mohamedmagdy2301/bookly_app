import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/core/model/books_model.dart';
import 'package:dartz/dartz.dart';

abstract class SearchRepo {
  Future<Either<Failure, List<BookModel>>> fetchSearchResults(
      List<String> query);
}
