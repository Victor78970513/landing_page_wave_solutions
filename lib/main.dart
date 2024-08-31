import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:landing_page/core/routes/router.dart';
import 'package:landing_page/core/theme/app_theme.dart';
// import 'package:landing_page/pages/home_page.dart';
import 'package:landing_page/pages/main_layout_page.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() => runApp(
      const ProviderScope(child: MyApp()),
    );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      // return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      //?GOROUTER
      routerConfig: WaveRouter.goRouter,
      //?GOROUTER
      // home: const HomePage(),
      theme: AppTheme.getAppTheme,
      builder: (context, child) => ResponsiveBreakpoints(
        breakpoints: const [
          Breakpoint(start: 0, end: 450, name: MOBILE),
          Breakpoint(start: 451, end: 800, name: TABLET),
          Breakpoint(start: 801, end: 1920, name: DESKTOP),
          Breakpoint(start: 1921, end: double.infinity, name: '4K'),
        ],
        child: MainLayoutPage(
          child: child!,
        ),
      ),
    );
  }
}
