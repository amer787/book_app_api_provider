// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:book_app_api_provider/model/book_detail_model.dart';

class BookDetailViewModel {
  BookDetailModel? bookDetailModel;
  BookDetailViewModel({
    this.bookDetailModel,
  });
  get id => bookDetailModel!.id;
  get image => bookDetailModel!.cover;
  get author => bookDetailModel!.author;
}
