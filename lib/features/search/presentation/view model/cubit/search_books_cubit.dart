import 'package:bloc/bloc.dart';
import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/core/model/books_model.dart';
import 'package:bookly/features/search/data/repo/search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

part 'search_books_state.dart';

class SearchBooksCubit extends Cubit<SearchBooksState> {
  SearchBooksCubit(this.searchRepo) : super(SearchBooksInitial());
  final SearchRepo searchRepo;
  Future<void> fetchSearchBooks(List<String> query) async {
    emit(SearchBooksLoading());
    Either<Failure, List<BookModel>> result =
        await searchRepo.fetchSearchBooks(query);
    result.fold(
      (Failure failure) => emit(
        SearchBooksFailure(failure.message),
      ),
      (List<BookModel> searchBooksList) => emit(
        SearchBooksSuccess(searchBooksList),
      ),
    );
  }
}
