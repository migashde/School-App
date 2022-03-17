import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Этүгэн',
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
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20.0),
          width: double.infinity,
          child: Column(
            children: <Widget>[
              Image.network('https://etugen.edu.mn/Images/001.png'),
              SizedBox(height: 20),
              const Text(
                'Танилцуулга апп нүүр хэсэг',
              ),
              SizedBox(height: 20),
              Card(
                child: Text(
                  'Танилцуулга апп нүүр хэсэг',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
