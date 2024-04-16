import 'package:flutter/material.dart';
import 'package:flutter_shop/pages/index_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: MaterialApp(
        title: 'flutter demo',
        theme: ThemeData(
          primarySwatch: Colors.blue
        ),
        home: new IndexPage()
      ),
    );
  }
}