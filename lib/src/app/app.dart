import 'package:app_kz/src/core/components/navbar.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (p0, p1, p2) {
        return const MaterialApp(
          home: NavbarView(),
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
