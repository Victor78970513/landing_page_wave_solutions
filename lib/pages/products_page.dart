import 'package:flutter/material.dart';
import 'package:landing_page/pages/products/products_mobile_view.dart';
import 'package:landing_page/pages/products/products_web_view.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ProductsPage extends StatelessWidget {
  static const name = '/Products';
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBreakpoints.of(context).isMobile ||
            ResponsiveBreakpoints.of(context).isTablet
        ? const ProductsMobileView()
        : const ProductsWebView();
  }
}
