import 'package:flutter/material.dart';

import 'config/theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tok Tik App ',
      debugShowCheckedModeBanner: false,
      theme: AppTheme().getTheme(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('TokTik'),
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
