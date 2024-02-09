// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:book_app_api_provider/model/book_model.dart';

class BookViewModel {
  BookModel? bookModel;
  BookViewModel({
    this.bookModel,
  });
  get title => bookModel!.title;
  get image => bookModel!.thumbnail;
  get id => bookModel!.id;
}
