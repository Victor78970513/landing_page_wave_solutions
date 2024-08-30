import 'package:flutter/material.dart';

class ServicesPage extends StatelessWidget {
  static const name = '/Services';
  const ServicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 100,
          width: 100,
          color: Colors.green,
          child: const Text('Services Page'),
        ),
      ),
    );
  }
}
