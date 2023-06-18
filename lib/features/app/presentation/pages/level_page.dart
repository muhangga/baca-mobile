import 'package:baca_project_frontend/core/theme.dart';
import 'package:baca_project_frontend/features/app/presentation/widgets/button_level.dart';
import 'package:flutter/material.dart';

class LevelPage extends StatelessWidget {
  const LevelPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.fromLTRB(24, 30, 24, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buttonArrowBack(context),
                const SizedBox(
                  height: 10,
                ),
                Center(
                  child: Text(
                    "PILIH LEVEL!",
                    style: headerOrangeTextStyle.copyWith(
                        fontSize: 40, fontWeight: semiBold),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 250,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/house.png'),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Wrap(
                  // bagi 2 level
                  spacing: 20,
                  runSpacing: 20,
                  children: [
                    ButtonLevel(
                      onTap: () {
                        Navigator.pushNamed(context, '/game');
                      },
                      imageUrl: 'assets/images/btn_level_1.png',
                    ),
                    ButtonLevel(
                      onTap: () {
                        Navigator.pushNamed(context, '/game');
                      },
                      imageUrl: 'assets/images/btn_level_2.png',
                    ),
                    ButtonLevel(
                      onTap: () {
                        Navigator.pushNamed(context, '/game');
                      },
                      imageUrl: 'assets/images/btn_level_3.png',
                    ),
                    ButtonLevel(
                      onTap: () {
                        Navigator.pushNamed(context, '/game');
                      },
                      imageUrl: 'assets/images/btn_level_4.png',
                    ),
                    ButtonLevel(
                      onTap: () {
                        Navigator.pushNamed(context, '/game');
                      },
                      imageUrl: 'assets/images/btn_level_5.png',
                    ),
                    ButtonLevel(
                      onTap: () {
                        Navigator.pushNamed(context, '/game');
                      },
                      imageUrl: 'assets/images/btn_level_6.png',
                    ),
                    ButtonLevel(
                      onTap: () {
                        Navigator.pushNamed(context, '/game');
                      },
                      imageUrl: 'assets/images/btn_level_7.png',
                    ),
                    ButtonLevel(
                      onTap: () {
                        Navigator.pushNamed(context, '/game');
                      },
                      imageUrl: 'assets/images/btn_level_8.png',
                    ),
                    ButtonLevel(
                      onTap: () {
                        Navigator.pushNamed(context, '/game');
                      },
                      imageUrl: 'assets/images/btn_level_9.png',
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _buttonArrowBack(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pop(context),
      child: Container(
        width: 45,
        height: 45,
        decoration:
            const BoxDecoration(color: orangeColor2, shape: BoxShape.circle),
        child: const Icon(
          Icons.arrow_back,
          color: whiteColor,
          size: 30,
        ),
      ),
    );
  }
}
