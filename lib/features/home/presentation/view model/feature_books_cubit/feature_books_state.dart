// ignore_for_file: must_be_immutable

part of 'feature_books_cubit.dart';

sealed class FeatureBooksState extends Equatable {
  const FeatureBooksState();

  @override
  List<Object> get props => [];
}

final class FeatureBooksInitial extends FeatureBooksState {}

final class FeatureBooksLoading extends FeatureBooksState {}

final class FeatureBooksSuccess extends FeatureBooksState {
  List<BookModel> featureBooksList;
  FeatureBooksSuccess({required this.featureBooksList});
}

final class FeatureBooksFailure extends FeatureBooksState {
  final String errorMessage;
  const FeatureBooksFailure({required this.errorMessage});
}
