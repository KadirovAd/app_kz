import 'package:app_kz/src/presentations/favorete_view/favorete_view.dart';
import 'package:flutter/material.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          LoginScreen(),
        ],
      ),
    );
  }
}
