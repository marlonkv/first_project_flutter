import 'package:flutter/material.dart';
import 'package:app/initial_screnn.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  bool tela = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'App', home: InitialScrenn(tela));
  }
}
