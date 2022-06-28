import 'package:flutter/material.dart';
import 'package:projekmakanan/views/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Resep Makanan',
      debugShowCheckedModeBanner: false ,
      theme: ThemeData(
          primarySwatch: Colors.red,
          primaryColor: Colors.blue,
          textTheme: TextTheme(bodyText2: TextStyle(color: Colors.white))),
      home: HomePage(),
    );
  }
}
