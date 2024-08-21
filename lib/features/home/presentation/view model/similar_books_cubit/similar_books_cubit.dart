import 'package:bloc/bloc.dart';
import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/core/model/books_model.dart';
import 'package:bookly/features/home/data/repo/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitial());

  final HomeRepo homeRepo;
  Future<void> fetchSimilarBooks(category) async {
    emit(SimilarBooksLoading());
    Either<Failure, List<BookModel>> result =
        await homeRepo.fetchSimilarBooks(category);
    result.fold((Failure failure) {
      emit(
        SimilarBooksFailure(errorMessage: failure.message),
      );
    }, (List<BookModel> similarBooksList) {
      emit(
        SimilarBooksSuccess(similarBooksList: similarBooksList),
      );
    });
  }
}
