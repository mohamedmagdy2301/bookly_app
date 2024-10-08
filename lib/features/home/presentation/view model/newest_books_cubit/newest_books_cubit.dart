import 'package:bloc/bloc.dart';
import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/core/model/books_model.dart';
import 'package:bookly/features/home/data/repo/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());
  final HomeRepo homeRepo;
  Future<void> fatchNewestBooks(category) async {
    emit(NewestBooksLoading());
    Either<Failure, List<BookModel>> result =
        await homeRepo.fetchNewestBooks(category);
    result.fold(
      (Failure failure) {
        emit(
          NewestBooksFailure(errorMessage: failure.message),
        );
      },
      (List<BookModel> newestBooksList) {
        emit(
          NewestBooksSuccess(newestBooksList: newestBooksList),
        );
      },
    );
  }
}
