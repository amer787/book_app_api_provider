// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:book_app_api_provider/services/repository_api.dart';
import 'package:book_app_api_provider/view_model/book_detail_view_model.dart';

class DisplayBookDetailViewModel {
  RepositoryApi? repositoryApi;
  DisplayBookDetailViewModel({
    this.repositoryApi,
  });
  Future<List<BookDetailViewModel>> fetchBookDetail(String id) async {
    final data = await repositoryApi!.getBookDetail(id);
    final dataFinal =
        data.map((e) => BookDetailViewModel(bookDetailModel: e)).toList();
    return dataFinal;
  }
}
