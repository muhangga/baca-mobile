import 'package:baca_project_frontend/core/theme.dart';
import 'package:baca_project_frontend/features/app/presentation/widgets/button_level.dart';
import 'package:baca_project_frontend/features/app/presentation/widgets/home_title_widgets.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.only(top: 50),
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
            ),
            child: Column(
              children: [
                HomeTitlePage(
                    imageUrl: 'assets/images/user.png', title: "RAJASA CIKAL"),
                const SizedBox(
                  height: 15,
                ),
                HomeTitlePage(
                    imageUrl: 'assets/images/coin.png', title: "SCORE : 1000"),
                const SizedBox(
                  height: 15,
                ),
                HomeTitlePage(
                    imageUrl: 'assets/images/trophy.png', title: "RANK : 1400"),
                Stack(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 50),
                      child: Image.asset(
                        'assets/images/house.png',
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 130),
                      child: Image.asset(
                        'assets/images/dinosaurus.png',
                        width: 150,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () => Navigator.pushNamed(context, '/level'),
                  child: Text("Klik untuk memulai",
                      style: blackTextStyle.copyWith(
                        fontSize: 22,
                        fontWeight: bold,
                      )),
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ButtonLevel(
                      onTap: () {},
                      imageUrl: 'assets/images/btn_help.png',
                    ),
                    ButtonLevel(
                      onTap: () {},
                      imageUrl: 'assets/images/btn_score.png',
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
