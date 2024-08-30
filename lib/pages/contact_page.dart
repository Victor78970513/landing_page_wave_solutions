import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  static const name = '/Contact-us';
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 100,
          width: 100,
          color: Colors.green,
          child: const Text('Contact Page'),
        ),
      ),
    );
  }
}
