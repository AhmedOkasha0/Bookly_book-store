import 'package:bookly/features/home/Data/models/book_model/BooksModel.dart';
import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/features/home/Data/repository/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImol implements HomeRepo{
  @override
  Future<Either<Faliure, List<BooksModel>>> fetchBestSellerBooks() {
    // TODO: implement fetchBestSellerBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Faliure, List<BooksModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }

}