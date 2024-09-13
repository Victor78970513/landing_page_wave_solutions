import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:landing_page/widgets/header/header.dart';

class MainLayoutPage extends ConsumerWidget {
  final Widget child;

  const MainLayoutPage({super.key, required this.child});

  @override
  Widget build(BuildContext context, ref) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          const Header(),
          Expanded(child: child),
        ],
      )),
    );
  }
}

// import 'package:landing_page/pages/about_us_page.dart';
// import 'package:landing_page/pages/contact_page.dart';
// import 'package:landing_page/pages/home_page.dart';
// import 'package:landing_page/pages/products_page.dart';
// import 'package:landing_page/pages/services_page.dart';
// import 'package:landing_page/providers/navigator_provider.dart';

          // Expanded(
          //   child: IndexedStack(
          //     index: navigator,
          //     children: const [
          //       HomePage(),
          //       ServicesPage(),
          //       AboutUsPage(),
          //       ProductsPage(),
          //       ContactPage(),
          //     ],
          //   ),
          // ),
