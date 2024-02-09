import 'dart:html';

import 'package:flutter/material.dart';

class BookDetailView extends StatefulWidget {
  String? id;
  BookDetailView({
    super.key,
    this.id,
  });

  @override
  State<BookDetailView> createState() => _BookDetailViewState();
}

class _BookDetailViewState extends State<BookDetailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Text(widget.id!),
        ),
      ),
    );
  }
}
