import 'package:flutter/material.dart';
import 'package:landing_page/pages/about_us/about_us_mobile_view.dart';
import 'package:landing_page/pages/about_us/about_us_web_view.dart';
import 'package:responsive_framework/responsive_framework.dart';

class AboutUsPage extends StatelessWidget {
  static const name = '/About-us';
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBreakpoints.of(context).isMobile ||
            ResponsiveBreakpoints.of(context).isTablet
        ? const AboutUsMobileView()
        : const AboutUsWebView();
  }
}
