import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/features/home/Data/models/book_model/BooksModel.dart';
import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/features/home/Data/repository/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImol implements HomeRepo {
  ApiService apiService;
  HomeRepoImol(this.apiService);
  @override
  Future<BooksModel> fetchFeaturedBooks() async {
    var response = await apiService.getFeatureBooks();
    return response;
  }

  @override
  Future<BooksModel?> fetchNewsBooks() async {
    var response = await apiService.getNewsBooks();
    return response;
  }
}
