import 'package:app_kz/src/presentations/create_orders/create_orders.dart';
import 'package:app_kz/src/presentations/favorete_view/favorete_view.dart';
import 'package:app_kz/src/presentations/home_views/home_view.dart';
import 'package:app_kz/src/presentations/notification_view/notification_view.dart';
import 'package:app_kz/src/presentations/profile_view/prifile_view.dart';
import 'package:flutter/material.dart';

class NavbarView extends StatefulWidget {
  const NavbarView({super.key});

  @override
  State<NavbarView> createState() => _NavbarViewState();
}

class _NavbarViewState extends State<NavbarView> {
  int _currentIndex = 0;
  final List<Widget> views = [
    const HomeView(),
    const FavoreteView(),
    const CreateOrders(),
    const NotificationView(),
    const PrifileView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: views[_currentIndex],
      bottomNavigationBar: SizedBox(
        height: 80,
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.deepOrangeAccent,
          unselectedItemColor: Colors.grey,
          onTap: (value) => setState(() {
            _currentIndex = value;
          }),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Главная',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Избранное',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_circle_outline),
              label: 'Создать',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: 'Уведомления',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Профиль',
            ),
          ],
        ),
      ),
    );
  }
}
