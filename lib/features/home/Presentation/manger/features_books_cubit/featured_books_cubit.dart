import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/Data/models/book_model/BooksModel.dart';
import 'package:equatable/equatable.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit() : super(FeaturedBooksInitial());
}
