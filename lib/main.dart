import 'package:flutter/material.dart';
import 'dart:math';

Random random = new Random();

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ListViewHome(),
    );
  }
}

class ListViewHome extends StatelessWidget {
  var date = DateTime.now();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Gallery'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(20, (index) {
          return Container(
              child: Card(
            color: Colors.deepPurpleAccent,
            child: Container(
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage('https://www.gwigwi.com/wp-content/uploads/2020/06/gwigwi.com-review-film-anime-a-whisker-away-kisah-seorang-gadis-remaja-yang-ingin-menjadi-kucing-2.jpg'),
                  fit: BoxFit.fitHeight,
                ),
              ),
              child: ListTile(
                title: Text(
                  '${random.nextInt(31) + 1}' + '/' + '${random.nextInt(12) + 1}' + '/' + date.year.toString(),
                  style: TextStyle(color: Colors.white, fontSize: 24.0),
                ),
              ),
            ),
          ));
        }),
      ),
    );
  }
}
