import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:landing_page/pages/about_us_page.dart';
import 'package:landing_page/pages/contact_page.dart';
import 'package:landing_page/pages/home_page.dart';
import 'package:landing_page/pages/products_page.dart';
import 'package:landing_page/pages/services_page.dart';

class WaveRouter {
  static GoRouter goRouter = GoRouter(
    initialLocation: '/',
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const HomePage();
        },
      ),
      GoRoute(
        path: '/About-us',
        builder: (context, state) {
          return const AboutUsPage();
        },
      ),
      GoRoute(
        path: '/Services',
        builder: (context, state) {
          return const ServicesPage();
        },
      ),
      GoRoute(
        path: '/Contact-us',
        builder: (context, state) {
          return const ContactPage();
        },
      ),
      GoRoute(
        path: '/Products',
        builder: (context, state) {
          return ProductsPage();
        },
      )
    ],
  );
}
