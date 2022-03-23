import 'package:flutter/material.dart';

class SinglePage extends StatelessWidget {
  // In the constructor, require a Todo.
  const SinglePage({Key? key, required this.id}) : super(key: key);

  // Declare a field that holds the Todo.
  final String id;

  @override
  Widget build(BuildContext context) {
    // Use the Todo to create the UI.
    return Scaffold(
      appBar: AppBar(
        title: Text(id),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(id),
      ),
    );
  }
}
