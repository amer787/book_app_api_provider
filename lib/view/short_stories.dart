import 'package:book_app_api_provider/view/book_detail_view.dart';
import 'package:book_app_api_provider/view_model/book_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../services/api.dart';
import '../view_model/display_book_view_model.dart';

class ShortStoriesView extends StatelessWidget {
  ShortStoriesView({super.key});
  var dataa = DisplayBookViewModel(repositoryApi: Api());
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<BookViewModel>>(
      future: dataa.fetchAllBook(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        } else {
          var news = snapshot.data;
          return Scaffold(
            body: Container(
              margin: const EdgeInsets.all(12),
              child: MasonryGridView.builder(
                gridDelegate:
                    const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2),
                itemCount: news.length,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BookDetailView(
                                  id: news![index].id,
                                )),
                      );
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        news[index].image,
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            ),
          );
        }
      },
    );
  }
}