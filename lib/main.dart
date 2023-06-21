import 'package:baca_project_frontend/core/theme.dart';
import 'package:baca_project_frontend/features/app/presentation/pages/game_page.dart';
import 'package:baca_project_frontend/features/app/presentation/pages/level_page.dart';
import 'package:flutter/services.dart';

import 'features/app/presentation/pages/login_page.dart';
import 'features/app/presentation/pages/register_page.dart';
import 'package:flutter/material.dart';

import 'features/app/presentation/pages/home_page.dart';

void main() {
  _setStatusBarColor();
  runApp(const MyApp());
}

_setStatusBarColor() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: barColor,
    ),
  );
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
        primarySwatch: Colors.yellow,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
        '/home': (context) => const HomePage(),
        '/level': (context) => const LevelPage(),
        '/game': (context) => const GamePage(),
      },
    );
  }
}
