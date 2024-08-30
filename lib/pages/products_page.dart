import 'package:flutter/material.dart';

class ProductsPage extends StatelessWidget {
  static const name = '/Products';
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 100,
          width: 100,
          color: Colors.green,
          child: const Text('products_page'),
        ),
      ),
    );
  }
}
