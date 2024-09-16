import 'package:flutter/material.dart';
import 'package:landing_page/pages/contact_us/contact_mobile_view.dart';
import 'package:landing_page/pages/contact_us/contact_web_view.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ContactPage extends StatelessWidget {
  static const name = '/Contact-us';
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBreakpoints.of(context).isMobile ||
            ResponsiveBreakpoints.of(context).isTablet
        ? const ContactMobileView()
        : const ContactWebView();
  }
}
