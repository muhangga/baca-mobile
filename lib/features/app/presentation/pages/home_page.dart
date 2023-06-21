import '../../../../core/theme.dart';
import '../../../../features/app/presentation/widgets/button_level.dart';
import '../../../../features/app/presentation/widgets/home_title_widgets.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  Animation<Offset>? offsetAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);

    offsetAnimation = Tween<Offset>(
      begin: Offset.zero,
      end: const Offset(1, 0.0),
    ).animate(CurvedAnimation(
      parent: _controller!,
      curve: Curves.linear,
    ));
  }

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
                    SlideTransition(
                      position: offsetAnimation!,
                      child: Container(
                        margin: const EdgeInsets.only(top: 130),
                        child: Image.asset(
                          'assets/images/dinosaurus.png',
                          width: 150,
                        ),
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
