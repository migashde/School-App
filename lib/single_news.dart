import 'package:flutter/material.dart';

class SingleNews extends StatelessWidget {
  // In the constructor, require a Todo.
  const SingleNews(
      {Key? key,
      required this.title,
      required this.content,
      required this.createdAt,
      required this.views})
      : super(key: key);

  // Declare a field that holds the Todo.
  final String title;
  final String content;
  final String createdAt;
  final String views;

  @override
  Widget build(BuildContext context) {
    // Use the Todo to create the UI.
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(content),
      ),
    );
  }
}
