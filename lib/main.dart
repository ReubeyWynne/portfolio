import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:reubey_portfolio/pages/landing/landing_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.blueGrey.shade900,
      builder: (context, child) => ResponsiveWrapper.builder(child,
          maxWidth: 5000,
          minWidth: 480,
          defaultScale: true,
          breakpoints: [
            const ResponsiveBreakpoint.resize(480, name: MOBILE),
            const ResponsiveBreakpoint.resize(800, name: TABLET),
            const ResponsiveBreakpoint.resize(1000, name: "TABLETLARGE"),
            const ResponsiveBreakpoint.resize(1200, name: DESKTOP),
            const ResponsiveBreakpoint.resize(1920, name: "Widecreen")
          ],
          background: Container(color: const Color(0xFFF5F5F5))),
      home: LandingPage(),
    );
  }
}
