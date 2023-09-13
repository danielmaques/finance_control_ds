import 'package:catalog/app/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Catalog());
}

class Catalog extends StatelessWidget {
  const Catalog({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Afinz Catalog',
      theme: ThemeData(
        colorScheme: const ColorScheme.dark(),
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
