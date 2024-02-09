import 'package:book_app_api_provider/model/book_detail_model.dart';
import 'package:book_app_api_provider/model/book_model.dart';

abstract class RepositoryApi {
  Future<List<BookModel>> getAll();
  Future<List<BookDetailModel>> getBookDetail(String id);
}
