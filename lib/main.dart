import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // theme: ThemeData(
        //   brightness: Brightness.dark
        // ),
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('hoge flutter test',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            )),
      ),
      body: const TweetTile(),
    ));
  }
}

class TweetTile extends StatelessWidget {
  const TweetTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://stv-tech.co.jp/wp-content/uploads/2023/08/1_5-aoK8IBmXve5whBQM90GA.png'),
            ),
            const SizedBox(width: 8),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Row(
                children: [
                  Text('hoge fuga piyo piyo'),
                  SizedBox(width: 8),
                  Text('2020/02/02'),
                ],
              ),
              const SizedBox(height: 4),
              const Text('foo bar'),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.favorite_border),
              ),
            ]),
          ],
        ));
  }
}
