import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:
          false, // Set this to true to show the debug banner
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Hello, Tarif!'),
        ),
        body: const Center(
          child: Text('Hello, Tarif!'),
        ),
      ),
    );
  }
}
