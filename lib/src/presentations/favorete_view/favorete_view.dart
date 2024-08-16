import 'package:app_kz/src/presentations/profile_view/prifile_view.dart';
import 'package:flutter/material.dart';

class FavoreteView extends StatelessWidget {
  const FavoreteView({super.key});

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

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Icon(
            Icons.account_circle,
            size: 100.0,
            color: Colors.deepOrangeAccent,
          ),
          const SizedBox(height: 20.0),
          const Text(
            'Войдите или создайте учетную запись',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10.0),
          const Text(
            'Для выполнения этой функции, просим вас пройти регистрацию',
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 30.0),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors
                    .deepOrangeAccent, // Очень светлый пастельный розовый цвет
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PrifileView(),
                  ),
                );
              },
              child: const Text(
                'Авторизация',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
