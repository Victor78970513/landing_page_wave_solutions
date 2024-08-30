import 'package:flutter/material.dart';
import 'package:landing_page/widgets/header/header.dart';

class MainLayoutPage extends StatelessWidget {
  final Widget child;

  const MainLayoutPage({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          const Header(),
          Expanded(
            child: Container(
              child: child,
            ),
          ),
        ],
      )),
    );
  }
}
