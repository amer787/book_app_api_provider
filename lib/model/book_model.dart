import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class BookModel {
  String? id;
  String? title;
  String? summary;
  String? thumbnail;
  String? author;
  String? published;
  BookModel({
    this.id,
    this.title,
    this.summary,
    this.thumbnail,
    this.author,
    this.published,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'summary': summary,
      'thumbnail': thumbnail,
      'author': author,
      'published': published,
    };
  }

  factory BookModel.fromMap(Map<String, dynamic> map) {
    return BookModel(
      id: map['id'] != null ? map['id'] as String : null,
      title: map['title'] != null ? map['title'] as String : null,
      summary: map['summary'] != null ? map['summary'] as String : null,
      thumbnail: map['thumbnail'] != null ? map['thumbnail'] as String : null,
      author: map['author'] != null ? map['author'] as String : null,
      published: map['published'] != null ? map['published'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  static List<BookModel> listFromJson(List<dynamic> list) =>
      List.from(list.map((x) => BookModel.fromMap(x)));
}
