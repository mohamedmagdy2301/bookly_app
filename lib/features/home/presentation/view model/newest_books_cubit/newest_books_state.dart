// ignore_for_file: must_be_immutable

part of 'newest_books_cubit.dart';

sealed class NewestBooksState extends Equatable {
  const NewestBooksState();

  @override
  List<Object> get props => [];
}

final class NewestBooksInitial extends NewestBooksState {}

final class NewestBooksLoading extends NewestBooksState {}

final class NewestBooksSuccess extends NewestBooksState {
  List<BookModel> newestBooksList;
  NewestBooksSuccess({required this.newestBooksList});
}

final class NewestBooksFailure extends NewestBooksState {
  final String errorMessage;
  const NewestBooksFailure({required this.errorMessage});
}
