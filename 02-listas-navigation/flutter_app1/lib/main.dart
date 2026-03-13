import 'package:flutter/material.dart';
import './screens/category_list_screen.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  var widgt = Text('Hello doo!');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: CategoryListScreen());
  }
}
