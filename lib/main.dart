import 'package:flutter/material.dart';

import 'package:componentes/src/pages/home_temp.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Componentes App'),
        ),
        body: HomePageTemp(),
      ),
    );
  }
}
