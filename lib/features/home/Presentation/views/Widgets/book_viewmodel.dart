import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/features/home/Data/models/BooksModel.dart';
import 'package:flutter/material.dart';

class BookViewModel extends StatefulWidget {
  const BookViewModel({Key? key}) : super(key: key);

  @override
  State<BookViewModel> createState() => _BookViewModelState();
}

class _BookViewModelState extends State<BookViewModel> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<BooksModel>(
      future: ApiService.getNewsBooks(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else if (snapshot.hasError) {
          return Column(
            children: [
              Text('something went wrong'),
              ElevatedButton(onPressed: () {}, child: Text('Refresh')),
            ],
          );
        }
        var itemList = snapshot.data!.items;
        return ListView.builder(
            itemBuilder: (context, index) {
              return Text(itemList![index].kind ?? '');
            },
            itemCount: itemList?.length ?? 0);
      },
    );
  }
}
