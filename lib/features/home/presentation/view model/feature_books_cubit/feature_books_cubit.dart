import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/features/home/data/model/books_model.dart';
import 'package:bookly/features/home/data/repo/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'feature_books_state.dart';

class FeatureBooksCubit extends Cubit<FeatureBooksState> {
  FeatureBooksCubit(this.homeRepo) : super(FeatureBooksInitial());
  final HomeRepo homeRepo;
  Future<void> fatchFeatureBooks() async {
    emit(FeatureBooksLoading());
    Either<Failure, List<BookModel>> result =
        await homeRepo.fetchFeaturedBooks();
    result.fold(
      (Failure failure) {
        emit(
          FeatureBooksFailure(errorMessage: failure.message),
        );
      },
      (List<BookModel> featureBooksList) {
        emit(
          FeatureBooksSuccess(featureBooksList: featureBooksList),
        );
      },
    );
  }
}
