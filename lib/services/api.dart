// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:book_app_api_provider/model/book_detail_model.dart';
import 'package:dio/dio.dart';
import 'package:book_app_api_provider/model/book_model.dart';
import 'package:book_app_api_provider/services/repository_api.dart';

class Api extends RepositoryApi {
  String baseUrl1 = "https://reading-home-apis.p.rapidapi.com/readinghome/api/";

  late Dio dio;
  Api() {
    BaseOptions options = BaseOptions(
      baseUrl: baseUrl1,
      receiveDataWhenStatusError: true,
    );
    dio = Dio(options);
  }
  @override
  Future<List<BookModel>> getAll() async {
    try {
      Response response = await dio.get(
        "get_books_by_category_id_rapidapi",
        queryParameters: {"id": '1', "page": '0'},
        options: Options(
          headers: {
            "Authorization":
                'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VybmFtZSI6ImdodWxhbWFiYmFzMDQwOUBnbWFpbC5jb20iLCJ1c2VyX2lkIjoiMSJ9.LFxL6F3M0f028qNZ0E7XuHIwE0thuTpJtdvDFtICUPY',
            'X-RapidAPI-Key':
                'fb36c2ba75mshb0c15bbc41c6b57p12ab9ajsn53b4727aa9c4',
            'X-RapidAPI-Host': 'reading-home-apis.p.rapidapi.com'
          },
        ),
      );
      final list = BookModel.listFromJson(response.data["books"]);
      return list;
    } on DioError catch (e) {
      print(e);
    }
    throw UnimplementedError();
  }

  @override
  Future<List<BookDetailModel>> getBookDetail(String id) async {
    try {
      Response response = await dio.get(
        "get_book_detail_rapiapi",
        queryParameters: {
          "id": id,
        },
        options: Options(
          headers: {
            "Authorization":
                'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VybmFtZSI6ImdodWxhbWFiYmFzMDQwOUBnbWFpbC5jb20iLCJ1c2VyX2lkIjoiMSJ9.LFxL6F3M0f028qNZ0E7XuHIwE0thuTpJtdvDFtICUPY',
            'X-RapidAPI-Key':
                'fb36c2ba75mshb0c15bbc41c6b57p12ab9ajsn53b4727aa9c4',
            'X-RapidAPI-Host': 'reading-home-apis.p.rapidapi.com'
          },
        ),
      );
      final list = BookDetailModel.listFromJson(response.data["book"]);
      return list;
    } on DioError catch (e) {
      print(e);
    }
    throw UnimplementedError();
  }
}
