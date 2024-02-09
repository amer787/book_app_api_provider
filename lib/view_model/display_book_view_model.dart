// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:book_app_api_provider/services/repository_api.dart';
import 'package:book_app_api_provider/view_model/book_view_model.dart';

class DisplayBookViewModel {
  RepositoryApi? repositoryApi;
  DisplayBookViewModel({
    this.repositoryApi,
  });
  Future<List<BookViewModel>> fetchAllBook() async {
    final data = await repositoryApi!.getAll();
    final dataFinal = data.map((e) => BookViewModel(bookModel: e)).toList();
    return dataFinal;
  }
}
