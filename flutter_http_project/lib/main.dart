import 'package:flutter/material.dart';
import 'package:flutter_http_project/post/view/pages/movie_page.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MoviePage(),
    );
  }
}
