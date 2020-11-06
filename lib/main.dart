import 'package:flutter/material.dart';

import 'screens/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'فيثاغورث',
      theme: ThemeData(
        primaryColor: Colors.orangeAccent,
        accentColor: Colors.white,
      ),
      home: Home(),
    );
  }
}
