import 'package:flutter/material.dart';
import 'package:oshtravel_/travel/hotel.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFEDF2F6),
      ),
      home:   Hotel(),
    );
  }
}


