import 'package:flutter/material.dart';
import 'package:trust_flutter_task/features/products/presentation/views/products_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: Color(0XFFFAF0E6),
      ),
      home: ProductsView(),
    );
  }
}
