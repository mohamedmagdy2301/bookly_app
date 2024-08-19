// ignore_for_file: must_be_immutable

part of 'feature_books_cubit.dart';

sealed class NewestBooksState extends Equatable {
  const NewestBooksState();

  @override
  List<Object> get props => [];
}

final class FeatureBooksInitial extends NewestBooksState {}

final class FeatureBooksLoading extends NewestBooksState {}

final class NewestBooksSuccess extends NewestBooksState {
  List<BookModel> featureBooksList;
  NewestBooksSuccess({required this.featureBooksList});
}

final class FeatureBooksFailure extends NewestBooksState {
  final String errorMessage;
  const FeatureBooksFailure({required this.errorMessage});
}
