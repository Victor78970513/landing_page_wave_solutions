import 'package:flutter/material.dart';
import 'package:landing_page/pages/servicess/services_mobile_view.dart';
import 'package:landing_page/pages/servicess/services_web_view.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ServicesPage extends StatelessWidget {
  static const name = '/Services';
  const ServicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBreakpoints.of(context).isMobile ||
            ResponsiveBreakpoints.of(context).isTablet
        ? const ServicesMobileView()
        : const ServicesWebView();
  }
}
