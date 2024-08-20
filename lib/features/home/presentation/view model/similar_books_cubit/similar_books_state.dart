part of 'similar_books_cubit.dart';

sealed class SimilarBooksState extends Equatable {
  const SimilarBooksState();
  @override
  List<Object> get props => [];
}

final class SimilarBooksInitial extends SimilarBooksState {}

final class SimilarBooksLoading extends SimilarBooksState {}

final class SimilarBooksFailure extends SimilarBooksState {
  const SimilarBooksFailure({required this.errorMessage});
  final String errorMessage;
}

final class SimilarBooksSuccess extends SimilarBooksState {
  const SimilarBooksSuccess({required this.similarBooksList});
  final List<BookModel> similarBooksList;
}
