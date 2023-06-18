import 'package:baca_project_frontend/core/theme.dart';

import 'features/app/presentation/pages/login_page.dart';
import 'features/app/presentation/pages/register_page.dart';
import 'package:flutter/material.dart';

import 'features/app/presentation/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Baca Baca',
      theme: ThemeData(
        scaffoldBackgroundColor: whiteColor,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
        '/home': (context) => HomePage(),
      },
    );
  }
}
