import 'dart:convert';
import 'package:bookly/features/home/Data/models/book_model/BooksModel.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static const baseUrl = 'https://www.googleapis.com/books/v1/';
  static const newsEndPoint = 'volumes?Sorting=newest &q=subject:programming';
  static const featchBooksEndPoint =
      'volumes?Filtering=free-ebooks&subject=&q=subject:programming';

  Future<BooksModel> getNewsBooks() async {
    var url = Uri.http(baseUrl, newsEndPoint);
    try {
      var response = await http.get(url);
      var bodyString = response.body;
      var json = jsonDecode(bodyString);
      var booksModel = BooksModel.fromJson(json);
      return booksModel;
    } on Exception catch (eror) {
      throw (eror.toString());
    }
  }

  Future<BooksModel> getFeatureBooks() async {
    var url = Uri.http(baseUrl, featchBooksEndPoint);
    try {
      var response = await http.get(url);
      var bodyString = response.body;
      var json = jsonDecode(bodyString);
      var booksModel = BooksModel.fromJson(json);
      return booksModel;
    } on Exception catch (eror) {
      throw (eror.toString());
    }
  }
}
