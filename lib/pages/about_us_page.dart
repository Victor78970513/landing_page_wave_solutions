import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:landing_page/pages/home_page.dart';

class AboutUsPage extends StatelessWidget {
  static const name = '/About-us';
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              context.go(HomePage.name);
            },
            child: Container(
              height: 100,
              width: 100,
              color: Colors.green,
              child: const Text('ABOUT US PIPIPI'),
            ),
          ),
        ],
      ),
    );
  }
}
