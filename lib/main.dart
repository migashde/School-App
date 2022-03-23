import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'single_news.dart';

Future<List<News>> fetchNews(http.Client client) async {
  final response =
      await client.get(Uri.parse('http://192.168.104.105/etugen/'));
  return compute(parseNews, response.body);
}

List<News> parseNews(String responseBody) {
  final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();
  return parsed.map<News>((json) => News.fromJson(json)).toList();
}

class News {
  final String id;
  final String title;
  final String content;
  final String createdAt;
  final String views;

  const News({
    required this.id,
    required this.title,
    required this.content,
    required this.createdAt,
    required this.views,
  });

  factory News.fromJson(Map<String, dynamic> json) {
    return News(
      id: json['id'] as String,
      title: json['title'] as String,
      content: json['content'] as String,
      createdAt: json['created_at'] as String,
      views: json['views'] as String,
    );
  }
}

void main() {
  runApp(const MaterialApp(title: 'Этүгэн', home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Этүгэн их сургууль'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              child: Text('Этүгэн их сургууль'),
              decoration: BoxDecoration(
                  color: Colors.blue,
                  image: DecorationImage(
                      image: AssetImage("assets/etugen.jpg"),
                      fit: BoxFit.cover)),
            ),
            ExpansionTile(
              title: Text("Бидний тухай"),
              children: <Widget>[
                ListTile(
                  title: const Text('Эрхэм зорилго, алсын хараа'),
                  onTap: () {},
                ),
                ListTile(
                  title: const Text('Ректорын мэндчилгээ'),
                  onTap: () {},
                ),
                ListTile(
                  title: const Text('Он цагийн дараалал'),
                  onTap: () {},
                ),
                ListTile(
                  title: const Text('Удирдлагын баг'),
                  onTap: () {},
                ),
                ListTile(
                  title: const Text('Сургуулийн бүтэц'),
                  onTap: () {},
                ),
              ],
            ),
            ExpansionTile(
              title: Text("Оюутан"),
              children: <Widget>[
                ListTile(
                  title: const Text('Оюутан'),
                  onTap: () {},
                ),
              ],
            ),
            ExpansionTile(
              title: Text("Сургалт"),
              children: <Widget>[
                ListTile(
                  title: const Text('Сургалт'),
                  onTap: () {},
                ),
              ],
            ),
            ExpansionTile(
              title: Text("Эрдэм шинжилгээ"),
              children: <Widget>[
                ListTile(
                  title: const Text('Эрдэм шинжилгээ'),
                  onTap: () {},
                ),
              ],
            ),
            ExpansionTile(
              title: Text("Сургуулийн орчин"),
              children: <Widget>[
                ListTile(
                  title: const Text('Сургуулийн орчин'),
                  onTap: () {},
                )
              ],
            ),
            ExpansionTile(
              title: Text("Элсэлт"),
              children: <Widget>[
                ListTile(
                  title: const Text('Элсэлт'),
                  onTap: () {},
                ),
              ],
            ),
            ListTile(
              title: const Text('Мэдээ'),
              onTap: () {},
            ),
            ExpansionTile(
              title: Text("Төгсөгч"),
              children: <Widget>[
                ListTile(
                  title: const Text('Төгсөгч'),
                  onTap: () {},
                ),
              ],
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: FutureBuilder<List<News>>(
        future: fetchNews(http.Client()),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return const Center(
              child: Text('Мэдээ олдсонгүй!'),
            );
          } else if (snapshot.hasData) {
            return NewsList(news: snapshot.data!);
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}

class NewsList extends StatelessWidget {
  const NewsList({Key? key, required this.news}) : super(key: key);

  final List<News> news;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: news.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () => {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => SingleNews(
                      title: news[index].title,
                      content: news[index].content,
                      createdAt: news[index].createdAt,
                      views: news[index].views)),
            ),
          },
          child: Card(
            child: Container(
              margin: EdgeInsets.all(15.0),
              child: Text(
                news[index].title,
                style: DefaultTextStyle.of(context)
                    .style
                    .apply(fontSizeFactor: 1.4),
              ),
            ),
          ),
        );
      },
    );
  }
}
