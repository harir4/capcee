import 'package:capcee/widgetone.dart';
import 'package:capcee/widgettwo.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Column(
        children: const [
          Expanded(
            flex: 1,
            child: Widgetone(),
          ),
          Expanded(
            flex: 1,
            child: Widgettwo(),
          ),
        ],
      ),
    );
  }
}
