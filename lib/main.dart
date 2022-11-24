import 'package:flutter/material.dart';
import 'package:watchmovie/HomePage.dart';
import 'package:watchmovie/Model/color_text.dart';
import 'package:watchmovie/Screen/VideoPlAY/VideoPlay.dart';
import 'package:watchmovie/Screen/VideoPlAY/video.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          hintColor: gray,
          backgroundColor: bgcolor,
          scaffoldBackgroundColor: bgcolor,
          appBarTheme: AppBarTheme(color: secondary, elevation: 0),
        ),
        debugShowCheckedModeBanner: false,
        home: BetterPlayer());
  }
}
