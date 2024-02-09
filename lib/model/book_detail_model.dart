import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class BookDetailModel {
  String? id;
  String? title;
  String? summary;
  String? thumbnail;
  String? cover;
  String? fileUrl;
  String? author;
  String? language;
  String? words;
  String? published;
  BookDetailModel({
    this.id,
    this.title,
    this.summary,
    this.thumbnail,
    this.cover,
    this.fileUrl,
    this.author,
    this.language,
    this.words,
    this.published,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'summary': summary,
      'thumbnail': thumbnail,
      'cover': cover,
      'fileUrl': fileUrl,
      'author': author,
      'language': language,
      'words': words,
      'published': published,
    };
  }

  factory BookDetailModel.fromMap(Map<String, dynamic> map) {
    return BookDetailModel(
      id: map['id'] != null ? map['id'] as String : null,
      title: map['title'] != null ? map['title'] as String : null,
      summary: map['summary'] != null ? map['summary'] as String : null,
      thumbnail: map['thumbnail'] != null ? map['thumbnail'] as String : null,
      cover: map['cover'] != null ? map['cover'] as String : null,
      fileUrl: map['fileUrl'] != null ? map['fileUrl'] as String : null,
      author: map['author'] != null ? map['author'] as String : null,
      language: map['language'] != null ? map['language'] as String : null,
      words: map['words'] != null ? map['words'] as String : null,
      published: map['published'] != null ? map['published'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  static List<BookDetailModel> listFromJson(List<dynamic> list) =>
      List.from(list.map((x) => BookDetailModel.fromMap(x)));
}
