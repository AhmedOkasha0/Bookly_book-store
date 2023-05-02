import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/features/home/Data/models/book_model/BooksModel.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Faliure, List<BooksModel>>> fetchBestSellerBooks();
  Future<Either<Faliure, List<BooksModel>>> fetchFeaturedBooks();
}
